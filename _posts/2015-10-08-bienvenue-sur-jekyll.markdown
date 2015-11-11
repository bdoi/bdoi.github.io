---
layout: post
title:  "Bienvenue sur Jekyll !"
link: welcome
date:   2015-10-08 07:58:29
categories: jekyll update
lang: fr
---
Cet article se situe dans le dossier `_posts`. Allez l'éditer, et générez votre site à nouveau pour voir les modifications. Vous pouvez générer le site de différentes façons, mais le plus efficace est de lancer la commande `jekyll serve`, qui crée un serveur web et génère automatiquement votre site à chaque fois qu'un fichier est modifié.

Pour ajouter un autre article, créez un nouveau fichier dans le dossier `_posts` dont le nom contient la date de la façon suivante : `AAAA-MM-JJ-nom-de-l-article.ext` et placez-y l'entête.  includes the necessary front matter. Regardez le code source de cet article pour avoir une bonne idée de la façon dont cela fonctionne. 

Jekyll permet aussi d'intégrer des extraits de code :

{% highlight ruby %}
def print_hi(name)
  puts "Bonjour, #{name}"
end
print_hi('Tom')
#=> affiche 'Bonjour, Tom' sur STDOUT.
{% endhighlight %}

Jetez un coup d'oeil à la [documentation de Jekyll][jekyll] pour en savoir plus sur ce qu'il vous est possible de faire avec Jekyll. Tous les bugs et demandes de fonctionnalités doivent être envoyés sous forme de requête sur [GitHub][jekyll-gh]. Si vous avez des questions, allez les poser sur le [fil d'aide de Jekyll][jekyll-help].

[jekyll]:      http://jekyllrb.com
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-help]: https://github.com/jekyll/jekyll-help
