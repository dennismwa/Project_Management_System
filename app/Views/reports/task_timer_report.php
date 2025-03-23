<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Timer Report</title>
</head>
<body>
    <h2>Task Timer Report</h2>
    <p>This is your report page.</p>
</body>
</html>

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Task ID</th>
            <th>User ID</th>
            <th>Start Time</th>
            <th>End Time</th>
            <th>Duration</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($timers as $timer) { ?>
            <tr>
                <td><?php echo $timer->task_id; ?></td>
                <td><?php echo $timer->user_id; ?></td>
                <td><?php echo $timer->start_time; ?></td>
                <td><?php echo $timer->end_time; ?></td>
                <td>
                    <?php 
                        if ($timer->end_time) {
                            $start = strtotime($timer->start_time);
                            $end = strtotime($timer->end_time);
                            echo gmdate("H:i:s", $end - $start);
                        } else {
                            echo "Running...";
                        }
                    ?>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>
