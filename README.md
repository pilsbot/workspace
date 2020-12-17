## How to bootstrap the Pilsbot project

- Install ROS2. See [The ROS2 installation page](https://index.ros.org/doc/ros2/Installation/)
  - Don't forget to `source /opt/ros/your_ros_version/setup.bash`
- Install [vcstool](https://github.com/dirk-thomas/vcstool)
- `git clone --branch ros2 git@github.com:pilsbot/workspace.git pilsbot && cd pilsbot`
- `source env.sh`
- `pilsbot init`
- `pilsbot build` Note that you can pass arguments like `pilsbot build --symlink-install`

### Source project environment variables

- `source env.sh`
- If the `install` directory does not exist, call `pilsbot build` and `source env.sh` again.

### Update packages

- `pilsbot update`

### build packages

- `pilsbot build`

### Start things

- `pilsbot launch what_you_want_to_launch.launch`

### Clean workspace

- `pilsbot clean`

### Get some help (lel)

- `pilsbot help`

## How to adapt the modules to import:

- Change `.rosinstall` according to the [vcs-YAML file format](https://github.com/dirk-thomas/vcstool#exporting-and-importing-sets-of-repositories)
- [Validate your changes](https://github.com/dirk-thomas/vcstool#validate-repositories-file) if you are unsure about the file format
- `pilsbot update`
- `pilsbot build`
