Here’s a comprehensive list of daily-use Vagrant commands along with descriptions and examples:

1. **`vagrant init`**
   - **Description**: Initializes a new Vagrant environment by creating a `Vagrantfile`.
   - **Example**:
     ```sh
     vagrant init hashicorp/bionic64
     ```

2. **`vagrant up`**
   - **Description**: Starts and provisions the Vagrant environment.
   - **Example**:
     ```sh
     vagrant up
     ```

3. **`vagrant ssh`**
   - **Description**: SSH into the running Vagrant machine.
   - **Example**:
     ```sh
     vagrant ssh
     ```

4. **`vagrant suspend`**
   - **Description**: Suspends the machine, saving its state to disk.
   - **Example**:
     ```sh
     vagrant suspend
     ```

5. **`vagrant resume`**
   - **Description**: Resumes a suspended Vagrant machine.
   - **Example**:
     ```sh
     vagrant resume
     ```

6. **`vagrant halt`**
   - **Description**: Stops the Vagrant machine gracefully.
   - **Example**:
     ```sh
     vagrant halt
     ```

7. **`vagrant destroy`**
   - **Description**: Stops and deletes all traces of the Vagrant machine.
   - **Example**:
     ```sh
     vagrant destroy
     ```

8. **`vagrant status`**
   - **Description**: Shows the status of the Vagrant environment.
   - **Example**:
     ```sh
     vagrant status
     ```

9. **`vagrant provision`**
   - **Description**: Runs the provisioners defined in the `Vagrantfile`.
   - **Example**:
     ```sh
     vagrant provision
     ```

10. **`vagrant reload`**
    - **Description**: Restarts the Vagrant machine and applies any changes in the `Vagrantfile`.
    - **Example**:
      ```sh
      vagrant reload
      ```

11. **`vagrant box add`**
    - **Description**: Adds a box to the local Vagrant environment.
    - **Example**:
      ```sh
      vagrant box add hashicorp/bionic64
      ```

12. **`vagrant box list`**
    - **Description**: Lists all boxes installed on the local machine.
    - **Example**:
      ```sh
      vagrant box list
      ```

13. **`vagrant box remove`**
    - **Description**: Removes a box from the local machine.
    - **Example**:
      ```sh
      vagrant box remove hashicorp/bionic64
      ```

14. **`vagrant box update`**
    - **Description**: Updates the box to the latest version.
    - **Example**:
      ```sh
      vagrant box update
      ```

15. **`vagrant plugin install`**
    - **Description**: Installs a Vagrant plugin.
    - **Example**:
      ```sh
      vagrant plugin install vagrant-vbguest
      ```

16. **`vagrant plugin list`**
    - **Description**: Lists installed Vagrant plugins.
    - **Example**:
      ```sh
      vagrant plugin list
      ```

17. **`vagrant plugin uninstall`**
    - **Description**: Uninstalls a Vagrant plugin.
    - **Example**:
      ```sh
      vagrant plugin uninstall vagrant-vbguest
      ```

18. **`vagrant share`**
    - **Description**: Shares the Vagrant environment via a publicly accessible URL.
    - **Example**:
      ```sh
      vagrant share
      ```

19. **`vagrant port`**
    - **Description**: Displays information about guest port mappings.
    - **Example**:
      ```sh
      vagrant port
      ```

20. **`vagrant ssh-config`**
    - **Description**: Outputs SSH configuration for connecting to the Vagrant machine.
    - **Example**:
      ```sh
      vagrant ssh-config
      ```

These commands cover most of the daily operations you'd need to perform with Vagrant.