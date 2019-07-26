<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="40xx" urn="urn:adsk.eagle:library:80">
<description>&lt;b&gt;CMOS Logic Devices, 4000 Series&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola &lt;i&gt;CMOS LOGIC DATA&lt;/i&gt;; book, 02/88, DL131 REV 1
&lt;li&gt;http://www.elexp.com
&lt;li&gt;http://www.intersil.com
&lt;li&gt;http://www.ls3c.com.tw/product/1/COMOS.html
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16" urn="urn:adsk.eagle:footprint:917/1" library_version="3">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16" urn="urn:adsk.eagle:footprint:722/1" library_version="3">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="DIL16" urn="urn:adsk.eagle:package:922/2" type="model" library_version="3">
<description>Dual In Line Package</description>
<packageinstances>
<packageinstance name="DIL16"/>
</packageinstances>
</package3d>
<package3d name="SO16" urn="urn:adsk.eagle:package:821/2" type="model" library_version="3">
<description>Small Outline package 150 mil</description>
<packageinstances>
<packageinstance name="SO16"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="4027" urn="urn:adsk.eagle:symbol:740/1" library_version="3">
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="7.62" x2="-7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-7.62" width="0.4064" layer="94"/>
<text x="-7.62" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="Q" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="!Q" x="12.7" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="CLK" x="-12.7" y="0" length="middle" direction="in" function="clk"/>
<pin name="R" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="K" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="J" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="S" x="-12.7" y="5.08" length="middle" direction="in"/>
</symbol>
<symbol name="PWRN" urn="urn:adsk.eagle:symbol:713/1" library_version="3">
<text x="-1.27" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VDD</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">VSS</text>
<pin name="VSS" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VDD" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="4027" urn="urn:adsk.eagle:component:840/4" prefix="IC" library_version="3">
<description>Dual JK &lt;b&gt;FLIP FLOP&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="4027" x="20.32" y="0" swaplevel="1"/>
<gate name="B" symbol="4027" x="20.32" y="-22.86" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="-5.08" y="-10.16" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="!Q" pad="2"/>
<connect gate="A" pin="CLK" pad="3"/>
<connect gate="A" pin="J" pad="6"/>
<connect gate="A" pin="K" pad="5"/>
<connect gate="A" pin="Q" pad="1"/>
<connect gate="A" pin="R" pad="4"/>
<connect gate="A" pin="S" pad="7"/>
<connect gate="B" pin="!Q" pad="14"/>
<connect gate="B" pin="CLK" pad="13"/>
<connect gate="B" pin="J" pad="10"/>
<connect gate="B" pin="K" pad="11"/>
<connect gate="B" pin="Q" pad="15"/>
<connect gate="B" pin="R" pad="12"/>
<connect gate="B" pin="S" pad="9"/>
<connect gate="P" pin="VDD" pad="16"/>
<connect gate="P" pin="VSS" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:922/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="!Q" pad="2"/>
<connect gate="A" pin="CLK" pad="3"/>
<connect gate="A" pin="J" pad="6"/>
<connect gate="A" pin="K" pad="5"/>
<connect gate="A" pin="Q" pad="1"/>
<connect gate="A" pin="R" pad="4"/>
<connect gate="A" pin="S" pad="7"/>
<connect gate="B" pin="!Q" pad="14"/>
<connect gate="B" pin="CLK" pad="13"/>
<connect gate="B" pin="J" pad="10"/>
<connect gate="B" pin="K" pad="11"/>
<connect gate="B" pin="Q" pad="15"/>
<connect gate="B" pin="R" pad="12"/>
<connect gate="B" pin="S" pad="9"/>
<connect gate="P" pin="VDD" pad="16"/>
<connect gate="P" pin="VSS" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:821/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74ac-logic" urn="urn:adsk.eagle:library:83">
<description>&lt;b&gt;TTL Logic Devices, 74AC11xx and 74AC16xx Series&lt;/b&gt;&lt;p&gt;
Based on the following source:
&lt;ul&gt;
&lt;li&gt;www.ti.com
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16" urn="urn:adsk.eagle:footprint:917/1" library_version="3">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16" urn="urn:adsk.eagle:footprint:1076/1" library_version="3">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="DIL16" urn="urn:adsk.eagle:package:922/2" type="model" library_version="3">
<description>Dual In Line Package</description>
<packageinstances>
<packageinstance name="DIL16"/>
</packageinstances>
</package3d>
<package3d name="SO16" urn="urn:adsk.eagle:package:1174/1" type="box" library_version="3">
<description>Small Outline package 150 mil</description>
<packageinstances>
<packageinstance name="SO16"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="7411008" urn="urn:adsk.eagle:symbol:1081/1" library_version="3">
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="2.5147" y2="0" width="0.4064" layer="94" curve="-89.713114" cap="flat"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="0" width="0.4064" layer="94" curve="90" cap="flat"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I0" x="-7.62" y="2.54" visible="pad" length="middle" direction="in"/>
<pin name="O" x="7.62" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="I1" x="-7.62" y="-2.54" visible="pad" length="middle" direction="in"/>
</symbol>
<symbol name="2PWR2GND" urn="urn:adsk.eagle:symbol:1073/1" library_version="3">
<text x="-3.175" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<pin name="GND@1" x="-2.54" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@2" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC@1" x="-2.54" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
<pin name="VCC@2" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74AC11008" urn="urn:adsk.eagle:component:1200/2" prefix="IC" library_version="3">
<description>Quadruple 2-input &lt;B&gt;AND&lt;/B&gt;</description>
<gates>
<gate name="A" symbol="7411008" x="-5.08" y="10.16" swaplevel="1"/>
<gate name="B" symbol="7411008" x="-5.08" y="-2.54" swaplevel="1"/>
<gate name="C" symbol="7411008" x="12.7" y="10.16" swaplevel="1"/>
<gate name="D" symbol="7411008" x="12.7" y="-2.54" swaplevel="1"/>
<gate name="P" symbol="2PWR2GND" x="27.94" y="5.08" addlevel="request"/>
</gates>
<devices>
<device name="" package="DIL16">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="16"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I0" pad="15"/>
<connect gate="B" pin="I1" pad="14"/>
<connect gate="B" pin="O" pad="3"/>
<connect gate="C" pin="I0" pad="11"/>
<connect gate="C" pin="I1" pad="10"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I0" pad="9"/>
<connect gate="D" pin="I1" pad="8"/>
<connect gate="D" pin="O" pad="7"/>
<connect gate="P" pin="GND@1" pad="4"/>
<connect gate="P" pin="GND@2" pad="5"/>
<connect gate="P" pin="VCC@1" pad="12"/>
<connect gate="P" pin="VCC@2" pad="13"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:922/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="I0" pad="1"/>
<connect gate="A" pin="I1" pad="16"/>
<connect gate="A" pin="O" pad="2"/>
<connect gate="B" pin="I0" pad="15"/>
<connect gate="B" pin="I1" pad="14"/>
<connect gate="B" pin="O" pad="3"/>
<connect gate="C" pin="I0" pad="11"/>
<connect gate="C" pin="I1" pad="10"/>
<connect gate="C" pin="O" pad="6"/>
<connect gate="D" pin="I0" pad="9"/>
<connect gate="D" pin="I1" pad="8"/>
<connect gate="D" pin="O" pad="7"/>
<connect gate="P" pin="GND@1" pad="4"/>
<connect gate="P" pin="GND@2" pad="5"/>
<connect gate="P" pin="VCC@1" pad="12"/>
<connect gate="P" pin="VCC@2" pad="13"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:1174/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="40xx" library_urn="urn:adsk.eagle:library:80" deviceset="4027" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="IC2" library="40xx" library_urn="urn:adsk.eagle:library:80" deviceset="4027" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="IC3" library="40xx" library_urn="urn:adsk.eagle:library:80" deviceset="4027" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="IC4" library="40xx" library_urn="urn:adsk.eagle:library:80" deviceset="4027" device="N" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="IC5" library="74ac-logic" library_urn="urn:adsk.eagle:library:83" deviceset="74AC11008" device="" package3d_urn="urn:adsk.eagle:package:922/2"/>
<part name="IC6" library="74ac-logic" library_urn="urn:adsk.eagle:library:83" deviceset="74AC11008" device="" package3d_urn="urn:adsk.eagle:package:922/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="A" x="15.24" y="43.18" smashed="yes">
<attribute name="NAME" x="7.62" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="7.62" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="IC1" gate="B" x="50.8" y="43.18" smashed="yes">
<attribute name="NAME" x="43.18" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="43.18" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="IC2" gate="A" x="83.82" y="43.18" smashed="yes">
<attribute name="NAME" x="76.2" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="76.2" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="IC2" gate="B" x="119.38" y="43.18" smashed="yes">
<attribute name="NAME" x="111.76" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="111.76" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="IC3" gate="A" x="154.94" y="43.18" smashed="yes">
<attribute name="NAME" x="147.32" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="147.32" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="IC4" gate="A" x="187.96" y="43.18" smashed="yes">
<attribute name="NAME" x="180.34" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="180.34" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="IC5" gate="A" x="63.5" y="78.74" smashed="yes">
<attribute name="NAME" x="66.04" y="81.915" size="1.778" layer="95"/>
<attribute name="VALUE" x="66.04" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="IC5" gate="B" x="96.52" y="78.74" smashed="yes">
<attribute name="NAME" x="99.06" y="81.915" size="1.778" layer="95"/>
<attribute name="VALUE" x="99.06" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="IC5" gate="C" x="132.08" y="78.74" smashed="yes">
<attribute name="NAME" x="134.62" y="81.915" size="1.778" layer="95"/>
<attribute name="VALUE" x="134.62" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="IC5" gate="D" x="172.72" y="78.74" smashed="yes">
<attribute name="NAME" x="175.26" y="81.915" size="1.778" layer="95"/>
<attribute name="VALUE" x="175.26" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="IC6" gate="A" x="187.96" y="10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="185.42" y="6.985" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="185.42" y="15.24" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC6" gate="B" x="187.96" y="-5.08" smashed="yes" rot="R180">
<attribute name="NAME" x="185.42" y="-8.255" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="185.42" y="0" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC6" gate="C" x="170.18" y="2.54" smashed="yes" rot="R180">
<attribute name="NAME" x="167.64" y="-0.635" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="167.64" y="7.62" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="A" pin="Q"/>
<wire x1="27.94" y1="48.26" x2="33.02" y2="48.26" width="0.1524" layer="91"/>
<wire x1="33.02" y1="48.26" x2="33.02" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="K"/>
<wire x1="33.02" y1="45.72" x2="33.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="33.02" y1="40.64" x2="38.1" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="J"/>
<wire x1="33.02" y1="45.72" x2="38.1" y2="45.72" width="0.1524" layer="91"/>
<junction x="33.02" y="45.72"/>
<pinref part="IC5" gate="A" pin="I0"/>
<wire x1="55.88" y1="81.28" x2="27.94" y2="81.28" width="0.1524" layer="91"/>
<wire x1="27.94" y1="81.28" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<junction x="27.94" y="48.26"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="-10.16" y1="68.58" x2="2.54" y2="68.58" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="S"/>
<wire x1="2.54" y1="68.58" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<wire x1="38.1" y1="68.58" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
<wire x1="71.12" y1="68.58" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<wire x1="106.68" y1="68.58" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
<wire x1="142.24" y1="68.58" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="175.26" y1="68.58" x2="185.42" y2="68.58" width="0.1524" layer="91"/>
<wire x1="2.54" y1="48.26" x2="2.54" y2="68.58" width="0.1524" layer="91"/>
<junction x="2.54" y="68.58"/>
<pinref part="IC1" gate="B" pin="S"/>
<wire x1="38.1" y1="48.26" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<junction x="38.1" y="68.58"/>
<pinref part="IC2" gate="A" pin="S"/>
<wire x1="71.12" y1="48.26" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
<junction x="71.12" y="68.58"/>
<pinref part="IC2" gate="B" pin="S"/>
<wire x1="106.68" y1="48.26" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<junction x="106.68" y="68.58"/>
<pinref part="IC3" gate="A" pin="S"/>
<wire x1="142.24" y1="48.26" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
<junction x="142.24" y="68.58"/>
<label x="-10.16" y="73.66" size="1.778" layer="95"/>
<pinref part="IC4" gate="A" pin="S"/>
<wire x1="175.26" y1="48.26" x2="175.26" y2="68.58" width="0.1524" layer="91"/>
<wire x1="175.26" y1="68.58" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
<junction x="175.26" y="68.58"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<pinref part="IC4" gate="A" pin="CLK"/>
<wire x1="175.26" y1="43.18" x2="172.72" y2="43.18" width="0.1524" layer="91"/>
<wire x1="172.72" y1="43.18" x2="172.72" y2="27.94" width="0.1524" layer="91"/>
<wire x1="172.72" y1="27.94" x2="139.7" y2="27.94" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="CLK"/>
<wire x1="139.7" y1="27.94" x2="104.14" y2="27.94" width="0.1524" layer="91"/>
<wire x1="104.14" y1="27.94" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<wire x1="68.58" y1="27.94" x2="35.56" y2="27.94" width="0.1524" layer="91"/>
<wire x1="35.56" y1="27.94" x2="0" y2="27.94" width="0.1524" layer="91"/>
<wire x1="0" y1="27.94" x2="-17.78" y2="27.94" width="0.1524" layer="91"/>
<wire x1="2.54" y1="43.18" x2="0" y2="43.18" width="0.1524" layer="91"/>
<wire x1="0" y1="43.18" x2="0" y2="27.94" width="0.1524" layer="91"/>
<junction x="0" y="27.94"/>
<pinref part="IC1" gate="B" pin="CLK"/>
<wire x1="38.1" y1="43.18" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
<wire x1="35.56" y1="43.18" x2="35.56" y2="27.94" width="0.1524" layer="91"/>
<junction x="35.56" y="27.94"/>
<pinref part="IC2" gate="A" pin="CLK"/>
<wire x1="71.12" y1="43.18" x2="68.58" y2="43.18" width="0.1524" layer="91"/>
<wire x1="68.58" y1="43.18" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<junction x="68.58" y="27.94"/>
<pinref part="IC2" gate="B" pin="CLK"/>
<wire x1="106.68" y1="43.18" x2="104.14" y2="43.18" width="0.1524" layer="91"/>
<wire x1="104.14" y1="43.18" x2="104.14" y2="27.94" width="0.1524" layer="91"/>
<junction x="104.14" y="27.94"/>
<pinref part="IC3" gate="A" pin="CLK"/>
<wire x1="142.24" y1="43.18" x2="139.7" y2="43.18" width="0.1524" layer="91"/>
<wire x1="139.7" y1="43.18" x2="139.7" y2="27.94" width="0.1524" layer="91"/>
<junction x="139.7" y="27.94"/>
<label x="-17.78" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="A" pin="J"/>
<wire x1="2.54" y1="45.72" x2="-7.62" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="A" pin="K"/>
<wire x1="2.54" y1="40.64" x2="-7.62" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="B" pin="Q"/>
<wire x1="63.5" y1="48.26" x2="63.5" y2="71.12" width="0.1524" layer="91"/>
<wire x1="63.5" y1="71.12" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC5" gate="A" pin="I1"/>
<wire x1="55.88" y1="71.12" x2="55.88" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC5" gate="A" pin="O"/>
<wire x1="71.12" y1="78.74" x2="71.12" y2="71.12" width="0.1524" layer="91"/>
<wire x1="71.12" y1="71.12" x2="66.04" y2="71.12" width="0.1524" layer="91"/>
<wire x1="66.04" y1="71.12" x2="66.04" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="K"/>
<wire x1="66.04" y1="45.72" x2="66.04" y2="40.64" width="0.1524" layer="91"/>
<wire x1="66.04" y1="40.64" x2="71.12" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="J"/>
<wire x1="71.12" y1="45.72" x2="66.04" y2="45.72" width="0.1524" layer="91"/>
<junction x="66.04" y="45.72"/>
<wire x1="71.12" y1="78.74" x2="78.74" y2="78.74" width="0.1524" layer="91"/>
<junction x="71.12" y="78.74"/>
<wire x1="78.74" y1="78.74" x2="78.74" y2="81.28" width="0.1524" layer="91"/>
<pinref part="IC5" gate="B" pin="I0"/>
<wire x1="78.74" y1="81.28" x2="88.9" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC2" gate="A" pin="Q"/>
<wire x1="96.52" y1="48.26" x2="96.52" y2="60.96" width="0.1524" layer="91"/>
<wire x1="96.52" y1="60.96" x2="88.9" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC5" gate="B" pin="I1"/>
<wire x1="88.9" y1="60.96" x2="88.9" y2="76.2" width="0.1524" layer="91"/>
<wire x1="96.52" y1="48.26" x2="99.06" y2="48.26" width="0.1524" layer="91"/>
<junction x="96.52" y="48.26"/>
<wire x1="99.06" y1="48.26" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<wire x1="99.06" y1="20.32" x2="205.74" y2="20.32" width="0.1524" layer="91"/>
<wire x1="205.74" y1="20.32" x2="205.74" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="I1"/>
<wire x1="205.74" y1="12.7" x2="195.58" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC5" gate="B" pin="O"/>
<wire x1="104.14" y1="78.74" x2="104.14" y2="71.12" width="0.1524" layer="91"/>
<wire x1="104.14" y1="71.12" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC2" gate="B" pin="K"/>
<wire x1="101.6" y1="71.12" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<wire x1="101.6" y1="45.72" x2="101.6" y2="40.64" width="0.1524" layer="91"/>
<wire x1="101.6" y1="40.64" x2="106.68" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC2" gate="B" pin="J"/>
<wire x1="106.68" y1="45.72" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<junction x="101.6" y="45.72"/>
<wire x1="104.14" y1="78.74" x2="111.76" y2="78.74" width="0.1524" layer="91"/>
<junction x="104.14" y="78.74"/>
<wire x1="111.76" y1="78.74" x2="111.76" y2="81.28" width="0.1524" layer="91"/>
<pinref part="IC5" gate="C" pin="I0"/>
<wire x1="111.76" y1="81.28" x2="124.46" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC5" gate="C" pin="O"/>
<wire x1="139.7" y1="78.74" x2="147.32" y2="78.74" width="0.1524" layer="91"/>
<wire x1="147.32" y1="78.74" x2="147.32" y2="81.28" width="0.1524" layer="91"/>
<pinref part="IC5" gate="D" pin="I0"/>
<wire x1="147.32" y1="81.28" x2="165.1" y2="81.28" width="0.1524" layer="91"/>
<wire x1="139.7" y1="78.74" x2="139.7" y2="71.12" width="0.1524" layer="91"/>
<junction x="139.7" y="78.74"/>
<wire x1="139.7" y1="71.12" x2="137.16" y2="71.12" width="0.1524" layer="91"/>
<wire x1="137.16" y1="71.12" x2="137.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="K"/>
<wire x1="137.16" y1="45.72" x2="137.16" y2="40.64" width="0.1524" layer="91"/>
<wire x1="137.16" y1="40.64" x2="142.24" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="J"/>
<wire x1="142.24" y1="45.72" x2="137.16" y2="45.72" width="0.1524" layer="91"/>
<junction x="137.16" y="45.72"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC2" gate="B" pin="Q"/>
<wire x1="132.08" y1="48.26" x2="132.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="132.08" y1="58.42" x2="124.46" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC5" gate="C" pin="I1"/>
<wire x1="124.46" y1="58.42" x2="124.46" y2="76.2" width="0.1524" layer="91"/>
<wire x1="132.08" y1="48.26" x2="134.62" y2="48.26" width="0.1524" layer="91"/>
<junction x="132.08" y="48.26"/>
<wire x1="134.62" y1="48.26" x2="134.62" y2="22.86" width="0.1524" layer="91"/>
<wire x1="134.62" y1="22.86" x2="210.82" y2="22.86" width="0.1524" layer="91"/>
<wire x1="210.82" y1="22.86" x2="210.82" y2="7.62" width="0.1524" layer="91"/>
<pinref part="IC6" gate="A" pin="I0"/>
<wire x1="210.82" y1="7.62" x2="195.58" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC5" gate="D" pin="I1"/>
<wire x1="165.1" y1="76.2" x2="165.1" y2="58.42" width="0.1524" layer="91"/>
<wire x1="165.1" y1="58.42" x2="167.64" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="Q"/>
<wire x1="167.64" y1="58.42" x2="167.64" y2="48.26" width="0.1524" layer="91"/>
<wire x1="167.64" y1="48.26" x2="167.64" y2="38.1" width="0.1524" layer="91"/>
<junction x="167.64" y="48.26"/>
<pinref part="IC3" gate="A" pin="!Q"/>
<wire x1="167.64" y1="48.26" x2="167.64" y2="25.4" width="0.1524" layer="91"/>
<wire x1="167.64" y1="25.4" x2="215.9" y2="25.4" width="0.1524" layer="91"/>
<wire x1="215.9" y1="25.4" x2="215.9" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="IC6" gate="B" pin="I1"/>
<wire x1="215.9" y1="-2.54" x2="195.58" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC5" gate="D" pin="O"/>
<wire x1="180.34" y1="78.74" x2="180.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="180.34" y1="58.42" x2="170.18" y2="58.42" width="0.1524" layer="91"/>
<wire x1="170.18" y1="58.42" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="K"/>
<wire x1="170.18" y1="45.72" x2="170.18" y2="40.64" width="0.1524" layer="91"/>
<wire x1="170.18" y1="40.64" x2="175.26" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="J"/>
<wire x1="175.26" y1="45.72" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
<junction x="170.18" y="45.72"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC4" gate="A" pin="Q"/>
<wire x1="200.66" y1="48.26" x2="218.44" y2="48.26" width="0.1524" layer="91"/>
<wire x1="218.44" y1="48.26" x2="218.44" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="IC6" gate="B" pin="I0"/>
<wire x1="218.44" y1="-7.62" x2="195.58" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC6" gate="A" pin="O"/>
<wire x1="180.34" y1="10.16" x2="177.8" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC6" gate="C" pin="I1"/>
<wire x1="177.8" y1="10.16" x2="177.8" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC6" gate="B" pin="O"/>
<wire x1="180.34" y1="-5.08" x2="177.8" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC6" gate="C" pin="I0"/>
<wire x1="177.8" y1="-5.08" x2="177.8" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC6" gate="C" pin="O"/>
<wire x1="162.56" y1="2.54" x2="160.02" y2="2.54" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="R"/>
<wire x1="160.02" y1="2.54" x2="142.24" y2="2.54" width="0.1524" layer="91"/>
<wire x1="142.24" y1="2.54" x2="106.68" y2="2.54" width="0.1524" layer="91"/>
<wire x1="106.68" y1="2.54" x2="71.12" y2="2.54" width="0.1524" layer="91"/>
<wire x1="71.12" y1="2.54" x2="38.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="38.1" y1="2.54" x2="2.54" y2="2.54" width="0.1524" layer="91"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC1" gate="B" pin="R"/>
<wire x1="38.1" y1="38.1" x2="38.1" y2="2.54" width="0.1524" layer="91"/>
<junction x="38.1" y="2.54"/>
<pinref part="IC2" gate="A" pin="R"/>
<wire x1="71.12" y1="38.1" x2="71.12" y2="2.54" width="0.1524" layer="91"/>
<junction x="71.12" y="2.54"/>
<pinref part="IC2" gate="B" pin="R"/>
<wire x1="106.68" y1="38.1" x2="106.68" y2="2.54" width="0.1524" layer="91"/>
<junction x="106.68" y="2.54"/>
<pinref part="IC3" gate="A" pin="R"/>
<wire x1="142.24" y1="38.1" x2="142.24" y2="2.54" width="0.1524" layer="91"/>
<junction x="142.24" y="2.54"/>
<pinref part="IC4" gate="A" pin="R"/>
<wire x1="175.26" y1="38.1" x2="175.26" y2="30.48" width="0.1524" layer="91"/>
<wire x1="175.26" y1="30.48" x2="160.02" y2="30.48" width="0.1524" layer="91"/>
<wire x1="160.02" y1="30.48" x2="160.02" y2="2.54" width="0.1524" layer="91"/>
<junction x="160.02" y="2.54"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
