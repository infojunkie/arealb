# arealb
Arabic Real Book

A collection of Arabic tunes formatted à la Real Book. The [output is published on MuseScore](https://musescore.com/user/55682/sets/2178286).

Each tune consists of several files:
- `tune.mscz` - the original tune sheet ([MuseScore](https://musescore.org) file)
- `tune.musicxml` - the generated standard tune sheet ([MusicXML](https://w3c.github.io/musicxml/) file)
- `tune.mma` - the accompaniment script ([MMA - MIDI Music Accompaniment](http://www.mellowood.ca/mma/) file)
- `tune.mid` - the MIDI file generated by MMA with the above as input

# Installation
- Install [MuseScore](https://musescore.org) and set `$MUSESCORE` to the MuseScore executable
- Download [MMA](https://github.com/infojunkie/mma) and set `$MMA_HOME` to its root folder
- Ensure `timidity` is accessible on the `$PATH`
- Ensure `aplaymidi` is accessible on the `$PATH`
- Ensure `pdftk` is accessible on the `$PATH`
- Run `timidity -iAD`
- Copy `mmarc.example` to `mmarc` to set the correct MIDI player parameters

# Building files
- `npm run grooves` to update an MMA Groove in `grooves`
- `npm run build:midi` to generate MIDI files from MMA files
- `npm run build:musicxml` to generate MusicXML files from MuseScore files
- `npm run build:pdf` to generate `arealb.pdf` from MuseScore files
- `npm run build` to run all build steps
- `npm run play <tune>` to preview a given `<tune>.mma` file
