#!/usr/bin/env python

from __future__ import print_function
import codecs

import click

KEYWORD_FILENAME = "resources/keywords.txt"


@click.group()
def cli():
    pass


@cli.command()
@click.argument('new_kws', nargs=-1, required=True)
def add(new_kws):
    # load current list
    with codecs.open(KEYWORD_FILENAME, 'r', encoding='utf8') as kwfile:
        full_list = [line.strip() for line in kwfile]

    # check new keywords
    kws_to_add = []
    for kw in set(new_kws):
        if kw in full_list:
            print("'{}' already in list -- skipped.".format(kw))
        else:
            kws_to_add.append(kw)

    # write file with new list if changed
    if kws_to_add:
        full_list.extend(kws_to_add)
        with codecs.open(KEYWORD_FILENAME, 'w', encoding='utf8') as kwfile:
            for kw in sorted(full_list, key=unicode.upper):
                kwfile.write(kw + '\n')


if __name__ == '__main__':
    cli()