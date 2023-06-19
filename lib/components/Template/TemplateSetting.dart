import 'package:flutter/material.dart';
import '../../Model/SettingData.dart';
import '../../utils/GetMaterail.dart';

class TemplateSetting extends StatefulWidget {
  const TemplateSetting({super.key, required this.setting});
  final AboutSetting setting;

  @override
  State<TemplateSetting> createState() => _TemplateSettingState();
}

class _TemplateSettingState extends State<TemplateSetting> {
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: widget.setting.color.withOpacity(0.25),
        child: Image.asset(
          widget.setting.icon,
          width: 20,
          height: 20,
          color: widget.setting.color,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.setting.title),
          widget.setting.type == SettingType.TurnON
              ? Row(
                  children: [
                    isSwitch ? const Text("ON") : const Text("OFF"),
                    Switch.adaptive(
                      value: isSwitch,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      splashRadius: 0,
                      onChanged: (value) {
                        setState(() {
                          isSwitch = !isSwitch;
                        });
                      },
                      trackColor: MaterialStateProperty.all(
                          isSwitch ? MaterialColors.one : MaterialColors.four),
                    )
                  ],
                )
              : widget.setting.type == SettingType.HaveTitle
                  ? Text(widget.setting.subtitle!)
                  : const SizedBox()
        ],
      ),
      trailing: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(100),
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: MaterialColors.four,
            ),
          )),
    );
  }
}
