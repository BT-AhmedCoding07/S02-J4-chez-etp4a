journalistes = [
  "@kidiDiallo",
  "@kheuchy",
  "@Alou01",
  "@Reporter123",
  "@mike",
  "@makhou",
  "@mamy_A",
  "@Eman",
  "@claude",
  "@AUDE34",
  "@amina",
  "@amina",
  "@dip"
]

# Combien y a-t-il de journalistes dans cet array ?
nombre_journalistes = journalistes.length
puts "Il y a #{nombre_journalistes} journalistes dans cet array."

# Combien d'handles contiennent un numéro ?
nombre_handles_numeriques = journalistes.count { |handle| handle =~ /\d/ }
puts "Il y a #{nombre_handles_numeriques} handles contenant un numéro."

# Combien d'handles contiennent les 4 lettres du prénom "aude" à la suite ?
nombre_handles_aude = journalistes.count { |handle| handle =~ /aude/i }
puts "Il y a #{nombre_handles_aude} handles contenant les 4 lettres du prénom 'aude' à la suite."

# Combien commencent par une majuscule (première lettre juste après le @) ?
nombre_majuscules = journalistes.count { |handle| handle =~ /@([A-Z])/ }
puts "Il y a #{nombre_majuscules} handles commençant par une majuscule."

# Combien contiennent au moins une majuscule ?
nombre_handles_majuscules = journalistes.count { |handle| handle =~ /[A-Z]/ }
puts "Il y a #{nombre_handles_majuscules} handles contenant au moins une majuscule."

# Combien y a-t-il de underscore _ dans tous les pseudos confondus ?
nombre_underscore = journalistes.join.count('_')
puts "Il y a #{nombre_underscore} underscore(s) dans tous les pseudos confondus."

# Trie la liste de handles par ordre alphabétique.
handles_tries = journalistes.sort
puts "Liste des handles triés par ordre alphabétique :"
puts handles_tries

# Quels sont les 50 handles les plus courts de cet array ?
handles_plus_courts = journalistes.sort_by { |handle| handle.length }.take(50)
puts "Liste des 50 handles les plus courts :"
puts handles_plus_courts
