## How to bootstrap the Pilsbot project

- Install ROS2. See [The ROS2 installation page](https://index.ros.org/doc/ros2/Installation/)
  - Don't forget to `source /opt/ros/your_ros_version/setup.bash`
  - Make sure you have colcon: `sudo apt install python3-colcon-common-extensions`
- Install [vcstool](https://github.com/dirk-thomas/vcstool)
- `git clone --branch ros2 git@github.com:pilsbot/workspace.git pilsbot && cd pilsbot`
- `source env.sh`
- `pilsbot init`
- `pilsbot build`

### Get some help (lel)

- `pilsbot help`

### Source project environment variables

- `source env.sh`

### Update packages

- `pilsbot update`

### Build packages

- `pilsbot build`
-  Note that you can pass arguments like `pilsbot build --symlink-install`

### Start things

- `pilsbot launch pilsbot_simulation pilsbot.launch.py`
- `pilsbot launch pilsbot_simulation pilsbot_control_test.launch.py`

### Clean workspace

- `pilsbot clean`

## How to adapt the modules to import:

- Change `.rosinstall` according to the [vcs-YAML file format](https://github.com/dirk-thomas/vcstool#exporting-and-importing-sets-of-repositories)
- [Validate your changes](https://github.com/dirk-thomas/vcstool#validate-repositories-file) if you are unsure about the file format
- `pilsbot update`
- `pilsbot build`
