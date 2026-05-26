# 机器人 3D 模型

当前目录保存机器人模型资源。

- `new_edition.blend`：用户提供的 Blender 源文件。
- `robot.glb`：前端 3D 预览优先加载的浏览器模型文件。

浏览器不能直接加载 `.blend` 文件。需要使用 Blender 将 `new_edition.blend` 导出为 `robot.glb` 后放在本目录，机器人页会自动加载真实模型。

导出建议：

1. 使用 Blender 打开 `new_edition.blend`。
2. 选择 `File -> Export -> glTF 2.0`。
3. 格式选择 `GLB`。
4. 文件命名为 `robot.glb`。
5. 放到 `public/models/robot.glb`。
