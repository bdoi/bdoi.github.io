# Bangladesh Olympiad in Informatics site #

## Setting up ##

1. Setup jekyll using the [offical documentation](https://jekyllrb.com/docs/installation/).
2. Checkout to `sources` branch. 
```bash
git checkout sources
```

## Local development

1. To add a new page, copy two markdown files, one for Bangla another for English (`index.md` and `index-bn.md`). 
2. Change the title and ref, according to `lang`.
3. Write English and Bangla content.
4. Run the following to see the result locally. 
```bash
bundle exec jekyll build
```
5. Deploy running the deployment script. Commit and push to `sources` when satistied.

```
./publish-to-github.sh
```
The script builds the htmls, stashes current changes, changes to `master` branch, copies all the files under `_site` to the root of the repo, commits and pushes to `master`. The it returns back to `source` branch and pops the stashed changes.

6. You can deploy without committing the source to `sources`. (Always keep the source and the production).
7. **Remember**, the `master` branch is for output htmls, **DO NOT** commit commit/push anything in that branch. The script does everything for you.
