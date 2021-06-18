<?php

namespace App\Http\Controllers;

use App\Medicine;
use Illuminate\Http\Request;
use TCG\Voyager\Models\User;
use App\Historymedicine;
use App\Historyscan;

class MedicineController extends Controller
{
    public function read() {
       return Medicine::all();
    }

    public function create(Request $request) {
         $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->avatar = $request->photo;
            $user->role_id = 2;
            $user->password = '$2y$10$WZtzgId4wGIh6hlPsoZSPeFooMGewuPBvDrV/.tYFy44oaIgtye5W';
            try {
                $user->save();
                return 'Thành công';
            } catch (\Throwable $th) {
                return 'Tài khoản đã tồn tại';
            }
    }

    public function show($id) {
		$user = User::where('email', $id)->pluck('id')->first();
		$history = Historymedicine::where('id_user', $user)->orderBy('id', 'desc')->pluck('id_medicines');		
		$medicines = Medicine::whereIn('id', $history)->get();
		$myArr = [];
		for ($i = 0; $i < count($history); $i++){	
			for ($j = 0; $j < count($medicines); $j++){	
			if($history[$i]==$medicines[$j]['id']){					
					array_push($myArr, $medicines[$j]);	
			}						
			}
		}
		$data = [
			"id"=>$history,
			"list"=>$myArr
			
		];
		return $data;
    }
	
    public function insert(Request $request) {
		
		$user = User::where('email', $request->email)->pluck('id')->first();
		$check = Historymedicine::where('id_medicines',$request->id_medicines)->where('id_user', $user)->pluck('id');
		
		if(count($check)>0){
			return 'Đã tồn tại';
		}else{
				try {
					
					$new_history = new Historymedicine();
					$new_history->id_user = $user;
					$new_history->id_medicines = $request->id_medicines;					
					$new_history->save();
					
					$history = Historymedicine::where('id_user', $user)->orderBy('id', 'desc')->pluck('id_medicines');
					$medicines = Medicine::whereIn('id', $history)->get();
					
					$myArr = [];
					
					for ($i = 0; $i < count($history); $i++){	
							for ($j = 0; $j < count($medicines); $j++){	
							if($history[$i]==$medicines[$j]['id']){					
								array_push($myArr, $medicines[$j]);	
							}						
						}
					}
					$data = [
					"list"=>$myArr,
					"id"=>$history
					];
					return $data;
				
				} catch (\Throwable $th) {
					return $th;
				}
		}
 
    }

    public function showscan($id) {
		$user = User::where('email', $id)->pluck('id')->first();
		$history = Historyscan::where('id_user', $user)->orderBy('id', 'desc')->get(["id","url"]);
		return $history;
    }
	 public function insertscan(Request $request) {
		 
		$user = User::where('email', $request->email)->pluck('id')->first();
		$check = Historyscan::where('url',$request->url)->where('id_user', $user)->pluck('id');
		
		if(count($check)>0){
			return 'Đã tồn tại';
		}else{
			try {
					
					$new_history = new Historyscan();
					$new_history->id_user = $user;
					$new_history->url = $request->url;					
					$new_history->save();
					
					$history = Historyscan::where('id_user', $user)->orderBy('id', 'desc')->get(["id","url"]);
					return $history;
				
				} catch (\Throwable $th) {
					return $th;
				}
		}
    }
	
	 public function apicovid() {
		$covid = [
			[
				'id'=>1,'name'=>'Bắc Giang','cases'=>3818,'recovered'=>336,'deaths'=>2
			],
			[
				'id'=>2,'name'=>'Bắc Ninh','cases'=>1285,'recovered'=>931,'deaths'=>4
			],
			[
				'id'=>3,'name'=>'TP. Hồ Chí Minh','cases'=>922,'recovered'=>646,'deaths'=>1
			],
			[
				'id'=>4,'name'=>'Hải Dương','cases'=>817,'recovered'=>796,'deaths'=>0
			],
			[
				'id'=>5,'name'=>'Hà Nội','cases'=>731,'recovered'=>410,'deaths'=>13
			],
			[
				'id'=>6,'name'=>'Đà Nẵng','cases'=>656,'recovered'=>582,'deaths'=>32
			],
			[
				'id'=>7,'name'=>'Khánh Hòa','cases'=>143,'recovered'=>134,'deaths'=>4
			],
			[
				'id'=>8,'name'=>'Quảng Nam','cases'=>126,'recovered'=>115,'deaths'=>3
			],
			[
				'id'=>9,'name'=>'Bà Rịa - Vũng Tàu','cases'=>136,'recovered'=>110,'deaths'=>0
			],
			[
				'id'=>10,'name'=>'Vĩnh Phúc','cases'=>113,'recovered'=>45,'deaths'=>0
			],
			[
				'id'=>11,'name'=>'Lạng Sơn','cases'=>99,'recovered'=>9,'deaths'=>1
			],
			[
				'id'=>12,'name'=>'Quảng Ninh','cases'=>90,'recovered'=>88,'deaths'=>0
			],
			[
				'id'=>13,'name'=>'Hưng Yên','cases'=>76,'recovered'=>60,'deaths'=>0
			],
			[
				'id'=>14,'name'=>'Kiên Giang','cases'=>65,'recovered'=>39,'deaths'=>0
			],
			[
				'id'=>15,'name'=>'Thái Bình','cases'=>64,'recovered'=>46,'deaths'=>0
			],
			[
				'id'=>16,'name'=>'Điện Biên','cases'=>61,'recovered'=>3,'deaths'=>0
			],
			[
				'id'=>17,'name'=>'Tây Ninh','cases'=>61,'recovered'=>38,'deaths'=>0
			],
			[
				'id'=>18,'name'=>'Hà Nam','cases'=>56,'recovered'=>23,'deaths'=>0
			],
			[
				'id'=>19,'name'=>'Bạc Liêu','cases'=>53,'recovered'=>52,'deaths'=>0
			],
			[
				'id'=>20,'name'=>'Bình Dương','cases'=>53,'recovered'=>45,'deaths'=>0
			],
			[
				'id'=>21,'name'=>'Ninh Bình','cases'=>40,'recovered'=>36,'deaths'=>0
			],
			[
				'id'=>22,'name'=>'Hà Tĩnh','cases'=>39,'recovered'=>10,'deaths'=>0
			],
			[
				'id'=>23,'name'=>'Cần Thơ','cases'=>34,'recovered'=>34,'deaths'=>0
			],
			[
				'id'=>24,'name'=>'Hòa Bình','cases'=>33,'recovered'=>29,'deaths'=>0
			],
			[
				'id'=>25,'name'=>'Đồng Nai','cases'=>32,'recovered'=>30,'deaths'=>0
			],
			[
				'id'=>26,'name'=>'Đồng Tháp','cases'=>29,'recovered'=>28,'deaths'=>0
			],
			[
				'id'=>27,'name'=>'Phú Yên','cases'=>29,'recovered'=>29,'deaths'=>0
			],
			[
				'id'=>28,'name'=>'Thanh Hóa','cases'=>29,'recovered'=>26,'deaths'=>0
			],
			[
				'id'=>29,'name'=>'Gia Lai','cases'=>28,'recovered'=>27,'deaths'=>0
			],
			[
				'id'=>30,'name'=>'Long An','cases'=>26,'recovered'=>9,'deaths'=>0
			],
			[
				'id'=>31,'name'=>'Nam Định','cases'=>25,'recovered'=>20,'deaths'=>0
			],
			[
				'id'=>32,'name'=>'An Giang','cases'=>20,'recovered'=>9,'deaths'=>0
			],
			[
				'id'=>33,'name'=>'Bến Tre','cases'=>20,'recovered'=>20,'deaths'=>0
			],
			[
				'id'=>34,'name'=>'Sóc Trăng','cases'=>19,'recovered'=>17,'deaths'=>0
			],
			[
				'id'=>35,'name'=>'Vĩnh Long','cases'=>16,'recovered'=>7,'deaths'=>0
			],
			[
				'id'=>36,'name'=>'Tiền Giang','cases'=>16,'recovered'=>6,'deaths'=>0
			],
			[
				'id'=>37,'name'=>'Quảng Trị','cases'=>13,'recovered'=>12,'deaths'=>1
			],
			[
				'id'=>38,'name'=>'̣Hải Phòng','cases'=>12,'recovered'=>10,'deaths'=>0
			],
			[
				'id'=>39,'name'=>'Ninh Thuận','cases'=>12,'recovered'=>12,'deaths'=>0
			],
			[
				'id'=>40,'name'=>'Bình Thuận','cases'=>11,'recovered'=>10,'deaths'=>0
			],
			[
				'id'=>41,'name'=>'Trà Vinh','cases'=>10,'recovered'=>8,'deaths'=>0
			],
			[
				'id'=>42,'name'=>'Thái Nguyên','cases'=>9,'recovered'=>7,'deaths'=>0
			],
			[
				'id'=>43,'name'=>'Cà Mau','cases'=>8,'recovered'=>8,'deaths'=>0
			],
			[
				'id'=>44,'name'=>'Đắk Lắk','cases'=>7,'recovered'=>5,'deaths'=>0
			],
			[
				'id'=>45,'name'=>'Phú Thọ','cases'=>7,'recovered'=>3,'deaths'=>0
			],
			[
				'id'=>46,'name'=>'Quảng Ngãi','cases'=>7,'recovered'=>7,'deaths'=>0
			],
			[
				'id'=>47,'name'=>'Thừa Thiên - Huế','cases'=>7,'recovered'=>7,'deaths'=>0
			],
			[
				'id'=>48,'name'=>'Nghệ An','cases'=>5,'recovered'=>5,'deaths'=>0
			],
			[
				'id'=>49,'name'=>'Yên Bái','cases'=>5,'recovered'=>5,'deaths'=>0
			],
			[
				'id'=>50,'name'=>'Hà Giang','cases'=>3,'recovered'=>3,'deaths'=>0
			],
			[
				'id'=>51,'name'=>'Lào Cai','cases'=>2,'recovered'=>2,'deaths'=>0
			],
			[
				'id'=>52,'name'=>'Lai Châu','cases'=>1,'recovered'=>1,'deaths'=>0
			],
			[
				'id'=>53,'name'=>'Sơn La','cases'=>1,'recovered'=>1,'deaths'=>0
			],
			[
				'id'=>54,'name'=>'Tuyên Quang','cases'=>1,'recovered'=>1,'deaths'=>0
			],
		];
		
		return $covid ;
    }
}
