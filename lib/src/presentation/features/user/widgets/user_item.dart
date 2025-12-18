
import 'package:flutter/material.dart';

import '../../../../domain/entities/user_entity/user_entity.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text("First Name: ${user.firstName}"),
          SizedBox(height: 10),
          Text("Last Name: ${user.lastName}"),
          SizedBox(height: 10),
          Text("Email: ${user.email}"),
          SizedBox(height: 10),
          Text("Phone: ${user.phone}"),
          SizedBox(height: 10),
          Text("Address: ${user.address}"),
          SizedBox(height: 10),
          Text("City: ${user.city}"),
          SizedBox(height: 10),
          Text("State: ${user.state}"),
          SizedBox(height: 10),
          Text("Zip: ${user.zip}"),
          SizedBox(height: 10),
          Text("Country: ${user.country}"),
          SizedBox(height: 10),
          Text("Company Name: ${user.companyName}"),
          SizedBox(height: 10),
          Text("Company Address: ${user.companyAddress} ${user.companyAddress}"),
          SizedBox(height: 10),
          Text("Crypto Wallet: ${user.cryptoWallet} ${user.cryptoWallet}"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}