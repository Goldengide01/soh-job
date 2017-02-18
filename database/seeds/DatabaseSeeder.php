<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
        // $sql = file_get_contents(__DIR__ . '/members.sql');
        // $statements = array_filter(array_map('trim', explode(';', $sql)));

        // foreach ($statements as $stmt) {
        //     DB::statement($stmt);
        // }

        $json_array = __DIR__.'/dumps/contacts.json';

        $areas = $this->json_to_array($json_array);

        // Uncomment the below to run the seeder
        DB::table('members')->insert($areas);

    
    }
    public function csv_to_array($filename='', $delimiter=',')
    {
            if(!file_exists($filename) || !is_readable($filename))
                return FALSE;

            $header = NULL;
            $data = array();
            if (($handle = fopen($filename, 'r')) !== FALSE)
            {
                while (($row = fgetcsv($handle, 1000, $delimiter)) !== FALSE)
                {
                    if(!$header)
                        $header = $row;
                    else
                        $data[] = array_combine($header, $row);
                }
                fclose($handle);
            }
            return $data;
    }

    public function json_to_array($filename){
        $json_data = File::get($filename);
        $json_array = json_decode($json_data, TRUE);
        return $json_array;
    }

    


}
