<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\Log;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class CreateAdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::create([
            'name' => 'Sandeep Sharma',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('123456')
        ]);
        Log::info('User Permissions: ', $user->getAllPermissions()->pluck('name')->toArray());

        $role = Role::create(['name' => 'Admin']);

        $permissions = Permission::pluck('id', 'id')->all();
        dd($permissions);
        $role->syncPermissions($permissions);

        $user->assignRole([$role->id]);
    }
}
