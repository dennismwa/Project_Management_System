<?php
class Task_timer_model extends CI_Model {

    public function start_timer($task_id, $user_id) {
        $data = array(
            "task_id" => $task_id,
            "user_id" => $user_id,
            "start_time" => date("Y-m-d H:i:s"),
            "status" => "open"
        );
        return $this->db->insert("task_timer", $data);
    }

    public function stop_timer($task_id, $user_id) {
        $this->db->where("task_id", $task_id);
        $this->db->where("user_id", $user_id);
        $this->db->where("status", "open");
        return $this->db->update("task_timer", array(
            "status" => "stopped",
            "end_time" => date("Y-m-d H:i:s")
        ));
    }

    public function get_task_timers($task_id) {
        return $this->db->get_where("task_timer", array("task_id" => $task_id))->result();
    }
}
?>
