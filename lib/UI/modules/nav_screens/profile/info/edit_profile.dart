import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/profile/edit_profile_field.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = 'YS';
    emailController.text = 'syomna444@gmail.com';
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(profileImage),
                ),
                CircleAvatar(
                    radius: 15,
                    child: Icon(
                      Icons.edit,
                      size: 18,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            EditProfileField(
              controller: nameController,
            ),
            const SizedBox(
              height: 14,
            ),
            EditProfileField(
              controller: emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultButton(widget: Text('Save' , style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),), color: kDefaultColor, function: (){})
          ],
        ),
      ),
    );
  }
}
