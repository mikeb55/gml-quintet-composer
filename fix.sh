#!/bin/bash
echo "🎼 Fixing Quintet Composer..."
curl -s https://pastebin.com/raw/TEMP 2>/dev/null || cat > musicGenerator.js << 'GEN'
class MusicGenerator{constructor(){this.scales={major:[0,2,4,5,7,9,11],minor:[0,2,3,5,7,8,10]};this.rhythms={simple:[4,4,2,2,4],compound:[2,2,2,2,4,4]}}generateMelody(bars=8,scale="major",root=60){const notes=[],s=this.scales[scale];for(let b=0;b<bars;b++)for(let i=0;i<4;i++)notes.push({pitch:root+s[Math.floor(Math.random()*s.length)],duration:[2,4,4,8][Math.floor(Math.random()*4)],velocity:60+Math.floor(Math.random()*40)});return notes}generateQuintet(bars=16){return{parts:{violin1:this.generateMelody(bars),violin2:this.generateMelody(bars,"major",64),viola:this.generateMelody(bars,"minor",57),cello:this.generateMelody(bars,"major",48),guitar:this.generateMelody(bars)}}}}window.MusicGenerator=MusicGenerator;
GEN
echo "✅ Quintet fixed! No more whole notes!"
