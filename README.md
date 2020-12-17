## How to bootstrap the Pilsbot project

- Install ROS2. See [The ROS2 installation page](https://index.ros.org/doc/ros2/Installation/)
  - Don't forget to `source /opt/ros/your_ros_version/setup.bash` (only needed for the installation)
- Install [vcstool](https://github.com/dirk-thomas/vcstool)
- `git clone --branch ros2 git@github.com:pilsbot/workspace.git pilsbot && cd pilsbot`
- `source env.sh`
- `pilsbot init`
- `pilsbot build`

### Update packages

- `source env.sh`
- `pilsbot update`

### Start things

- `source env.sh`
- `pilsbot launch what_you_want_to_launch.launch`

### Get some help (lel)

- `source env.sh`
- `pilsbot help`

## How to adapt the modules to import:

- Change `.rosinstall` according to the [vcs-YAML file format](https://github.com/dirk-thomas/vcstool#exporting-and-importing-sets-of-repositories)
- [Validate your changes](https://github.com/dirk-thomas/vcstool#validate-repositories-file) if you are unsure about the file format
- `pilsbot update`
- `pilsbot build`
