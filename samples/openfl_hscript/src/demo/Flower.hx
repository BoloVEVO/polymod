/**
 * Copyright (c) 2018 Level Up Labs, LLC
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * 
 */

package demo;

import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.utils.Assets;

class Flower extends Sprite
{
	public var pollen:Float = 0;
	public var maxPollen:Float = 0;

	public var cooldown:Float = 0;
	public var maxCooldown:Float = 30;

	public function new(i:Int = 1)
	{
		super();
		pollen = maxPollen = i;
		var bmp = new Bitmap(Assets.getBitmapData("img/flower" + i + ".png"));
		addChild(bmp);

		bmp.scaleX = 0.5;
		bmp.scaleY = 0.5;
		bmp.x -= bmp.width / 2;
		bmp.y -= bmp.height / 2;
		bmp.smoothing = true;
	}
}
