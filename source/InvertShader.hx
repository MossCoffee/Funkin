package;

import flixel.system.FlxAssets.FlxShader;

class InvertShader extends FlxShader
{
	@:glFragmentSource('
		#pragma header
		void main()
		{
			vec4 base = texture2D(bitmap, openfl_TextureCoordv);
            gl_FragColor = vec4(1.0-base.w, 1.0-base.x, 1.0-base.y, base.z);
		}')
    
	public function new()
	{
		super();
	}
}
