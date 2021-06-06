<?php

namespace App\Http\Controllers;

use App\Course;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $courses = Course::all();
        return view('home',compact('courses'));
    }

    public function chatBot(Request $request)
    {
        $text_chat = strtolower($request->text_chat);

        if(strpos($text_chat, 'tu van') !== false || strpos($text_chat, 'lua chon') !== false)
        {
            return response()->json([
                'type' => 'text',
                'data' => 'Nếu bạn đang không biết mình phù hợp hay nên theo ngôn ngữ lập trình nào thì hay lên văn phòng để gặp trực tiếp các thầy cô tư vấn hoặc gọi qua số điện thoại : 0941244467 để được hỗ trợ tốt nhất ạ. Bạn có câu hỏi nào thêm không ạ.',
            ], 200);
        }
        else if(strpos($text_chat, 'java') !== false)
        {
            $course = Course::where('name','Java Core Programming')->first();

            return response()->json([
                'type' => 'text',
                'data' => '<a href="'. route('course.show',$course->id) .'">Khoá học '. $course->name .'</a> bên trung tâm chúng tôi đang có giá $'. $course->price .' và được học liên tục trong thời gian '. $course->total_time .' tháng được dạy bởi các thầy cao có kỹ năng chuyên môn cao và đảm bảo chất lượng đầu ra cho học sinh bên trung tâm.',
            ], 200);
        }
        else if(strpos($text_chat, 'ios') !== false)
        {
            $course = Course::where('name','IOS – Swift Programming')->first();

            return response()->json([
                'type' => 'text',
                'data' => '<a href="'. route('course.show',$course->id) .'">Khoá học '. $course->name .'</a> bên trung tâm chúng tôi đang có giá $'. $course->price .' và được học liên tục trong thời gian '. $course->total_time .' tháng được dạy bởi các thầy cao có kỹ năng chuyên môn cao và đảm bảo chất lượng đầu ra cho học sinh bên trung tâm.',
            ], 200);
        }
        else if(strpos($text_chat, 'android') !== false)
        {
            $course = Course::where('name','Android -Kotlin Programming')->first();

            return response()->json([
                'type' => 'text',
                'data' => '<a href="'. route('course.show',$course->id) .'">Khoá học '. $course->name .'</a> bên trung tâm chúng tôi đang có giá $'. $course->price .' và được học liên tục trong thời gian '. $course->total_time .' tháng được dạy bởi các thầy cao có kỹ năng chuyên môn cao và đảm bảo chất lượng đầu ra cho học sinh bên trung tâm.',
            ], 200);
        }
        else if(strpos($text_chat, 'tester') !== false)
        {
            $course = Course::where('name','Software Testing')->first();

            return response()->json([
                'type' => 'text',
                'data' => '<a href="'. route('course.show',$course->id) .'">Khoá học '. $course->name .'</a> bên trung tâm chúng tôi đang có giá $'. $course->price .' và được học liên tục trong thời gian '. $course->total_time .' tháng được dạy bởi các thầy cao có kỹ năng chuyên môn cao và đảm bảo chất lượng đầu ra cho học sinh bên trung tâm.',
            ], 200);
        }
        else if(strpos($text_chat, 'front-end') !== false)
        {
            $course = Course::where('name','New Front-End Programming')->first();

            return response()->json([
                'type' => 'text',
                'data' => '<a href="'. route('course.show',$course->id) .'">Khoá học '. $course->name .'</a> bên trung tâm chúng tôi đang có giá $'. $course->price .' và được học liên tục trong thời gian '. $course->total_time .' tháng được dạy bởi các thầy cao có kỹ năng chuyên môn cao và đảm bảo chất lượng đầu ra cho học sinh bên trung tâm.',
            ], 200);
        }
        else if(strpos($text_chat, 'lich hoc') !== false)
        {
            return response()->json([
                'type' => 'text',
                'data' => 'Về lịch học thì các học viên bên trung tâm sẽ liên hệ quá sdt 0941244467 hoặc gặp trực tiếp trực tiếp quản lý bên trung tâm sẽ được hướng dẫn và phân chia các tiết học phù hợp với thời gian của học viên và tạo điều kiện cho học viên 1 cách tốt nhất.'
            ], 200);
        }
        else if(strpos($text_chat, 'chuong trinh hoc') !== false || strpos($text_chat, 'hinh thuc') !== false)
        {
            return response()->json([
                'type' => 'text',
                'data' => 'Bên trung tâm sẽ có 2 hình thức học tập<br>1: sẽ học trực tiếp và được hỗ trợ làm bài kiểm tra và test định kì online hoặc trực tiếp cho học viên<br>2: các học viên sẽ học qua video và sẽ có người quan sát theo dõi nhắc nhở các bạn, và các học viên sẽ được cung cấp thông tin liên lạc của người chịu tách nhiệm thoe dõi học viên đó để tiện việc trao đổi khi các học viên không hiểu về các vấn đề trong bài học'
            ], 200);
        }
        else if(strpos($text_chat, 'kiem tra') !== false)
        {
            return response()->json([
                'type' => 'text',
                'data' => 'Bên trung tâm sẽ update câu hỏi cho học viên test thử mức độ học tập và hiểu bài của học viên qua 3 level và nếu học viên làm được 80/100 sẽ được tiếp tục học tiếp phần mới . còn nếu không được sẽ học lại phần học trước đó để đảm bảo hơn.'
            ], 200);
        }
        else if(strpos($text_chat, 'hoc phi') !== false || strpos($text_chat, 'nop tien') !== false)
        {
            return response()->json([
                'type' => 'text',
                'data' => 'Bên trung tâm sẽ tạo điều kiện cho học viên nộp học phí theo từng đợt. sẽ chia học phí của học viên ra 3 đợt để việc nộp học phí sẽ nhẹ nhàng hơn. và tất nhiên , nếu bạn nào nộp học phí 1 lần thì sẽ được giảm 10%.'
            ], 200);
        }
        else if(strpos($text_chat, 'cam on') !== false || strpos($text_chat, 'tam biet') !== false)
        {
            return response()->json([
                'type' => 'text',
                'data' => 'Rất vui vì đã được tư vấn và giữ đỡ bạn, hi vọng bạn sớm đưa ra sự lựa chọn để nhập học sơm nhất có thể để trung tâm có thể hỗ trợ bạn tốt nhất trong việc học. Hẹn gặp lại bạn.'
            ], 200);
        }
        else
        {
            return response()->json([
                'type' => 'text',
                'data' => 'Chúng tôi không hiểu bạn đang nói về vấn đề gì, có liên quan đến hệ thống hay không, vui lòng nhập lại, xin thông cảm !'
            ], 200);
        }
    }

    private function stripVN($str) {
        $str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/", 'a', $str);
        $str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $str);
        $str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $str);
        $str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/", 'o', $str);
        $str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $str);
        $str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $str);
        $str = preg_replace("/(đ)/", 'd', $str);
    
        $str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/", 'A', $str);
        $str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $str);
        $str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $str);
        $str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/", 'O', $str);
        $str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $str);
        $str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $str);
        $str = preg_replace("/(Đ)/", 'D', $str);
        return $str;
    }
}
