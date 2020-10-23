class User {
  final String name;
  final String surname;
  final String companyName;
  final String about;

  final int bidders;
  final int interviews;
  final String location;
  final String practice;
  final String areaOfPractice;

  final String registrationDate;
  final int minReferralFee;
  final String represent;

  final String organization;

  User(
      {this.organization,
      this.name,
      this.surname,
      this.companyName,
      this.about,
      this.bidders,
      this.interviews,
      this.location,
      this.practice,
      this.areaOfPractice,
      this.registrationDate,
      this.minReferralFee,
      this.represent});
}

List<User> users = [
  User(
      name: 'John',
      surname: 'Smith',
      companyName: 'Smith Law Firm',
      about:
          'Feugiat, occaecati arcu magna explicabo cons ectetur tempore quos fugiat dolorasperna tur varius, gravida quas, autem consectetur hic  faucibus nesciunt, arcu consectetu raute...',
      bidders: 12,
      interviews: 5,
      location: 'Los Angeles Country, CA',
      practice: 'Auto accident',
      areaOfPractice: 'Personal Injury',
      registrationDate: 'Sep 19, 2019',
      minReferralFee: 30,
      represent: 'Plaintiff',
      organization: 'The Bidders'),
  User(
      name: 'John',
      surname: 'Smith',
      companyName: 'Smith Law Firm',
      about:
          'Feugiat, occaecati arcu magna explicabo cons ectetur tempore quos fugiat dolorasperna tur varius, gravida quas, autem consectetur hic  faucibus nesciunt, arcu consectetu raute...',
      bidders: 12,
      interviews: 5,
      location: 'Los Angeles Country, CA',
      practice: 'Auto accident',
      areaOfPractice: 'Personal Injury',
      registrationDate: 'Sep 19, 2019',
      minReferralFee: 30,
      represent: 'Plaintiff',
      organization: null),
];
