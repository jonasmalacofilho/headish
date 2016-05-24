class Headish {
	static function main()
	{
		var fin = Sys.stdin();
		var fout = Sys.stdout();
		var last:String = null;

		try {
			while (true) {
				var cur = fin.readLine();
				if (last != null && cur.length > 0) {
					fout.writeString(last);
					fout.writeString("\n");
				}
				last = cur;
			}
		} catch (e:haxe.io.Eof) {}
	}
}

