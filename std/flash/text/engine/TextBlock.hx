package flash.text.engine;

extern final class TextBlock {
	@:flash.property var applyNonLinearFontScaling(get,set) : Bool;
	@:flash.property var baselineFontDescription(get,set) : FontDescription;
	@:flash.property var baselineFontSize(get,set) : Float;
	@:flash.property var baselineZero(get,set) : TextBaseline;
	@:flash.property var bidiLevel(get,set) : Int;
	@:flash.property var content(get,set) : ContentElement;
	@:flash.property var firstInvalidLine(get,never) : TextLine;
	@:flash.property var firstLine(get,never) : TextLine;
	@:flash.property var lastLine(get,never) : TextLine;
	@:flash.property var lineRotation(get,set) : TextRotation;
	@:flash.property var tabStops(get,set) : flash.Vector<TabStop>;
	@:flash.property var textJustifier(get,set) : TextJustifier;
	@:flash.property var textLineCreationResult(get,never) : TextLineCreationResult;
	var userData : Dynamic;
	function new(?content : ContentElement, ?tabStops : flash.Vector<TabStop>, ?textJustifier : TextJustifier, ?lineRotation : TextRotation, ?baselineZero : TextBaseline, bidiLevel : Int = 0, applyNonLinearFontScaling : Bool = true, ?baselineFontDescription : FontDescription, baselineFontSize : Float = 12) : Void;
	function createTextLine(?previousLine : TextLine, width : Float = 1000000, lineOffset : Float = 0, fitSomething : Bool = false) : TextLine;
	function dump() : String;
	function findNextAtomBoundary(afterCharIndex : Int) : Int;
	function findNextWordBoundary(afterCharIndex : Int) : Int;
	function findPreviousAtomBoundary(beforeCharIndex : Int) : Int;
	function findPreviousWordBoundary(beforeCharIndex : Int) : Int;
	function getTextLineAtCharIndex(charIndex : Int) : TextLine;
	private function get_applyNonLinearFontScaling() : Bool;
	private function get_baselineFontDescription() : FontDescription;
	private function get_baselineFontSize() : Float;
	private function get_baselineZero() : TextBaseline;
	private function get_bidiLevel() : Int;
	private function get_content() : ContentElement;
	private function get_firstInvalidLine() : TextLine;
	private function get_firstLine() : TextLine;
	private function get_lastLine() : TextLine;
	private function get_lineRotation() : TextRotation;
	private function get_tabStops() : flash.Vector<TabStop>;
	private function get_textJustifier() : TextJustifier;
	private function get_textLineCreationResult() : TextLineCreationResult;
	@:require(flash10_1) function recreateTextLine(textLine : TextLine, ?previousLine : TextLine, width : Float = 1000000, lineOffset : Float = 0, fitSomething : Bool = false) : TextLine;
	@:require(flash10_1) function releaseLineCreationData() : Void;
	function releaseLines(firstLine : TextLine, lastLine : TextLine) : Void;
	private function set_applyNonLinearFontScaling(value : Bool) : Bool;
	private function set_baselineFontDescription(value : FontDescription) : FontDescription;
	private function set_baselineFontSize(value : Float) : Float;
	private function set_baselineZero(value : TextBaseline) : TextBaseline;
	private function set_bidiLevel(value : Int) : Int;
	private function set_content(value : ContentElement) : ContentElement;
	private function set_lineRotation(value : TextRotation) : TextRotation;
	private function set_tabStops(value : flash.Vector<TabStop>) : flash.Vector<TabStop>;
	private function set_textJustifier(value : TextJustifier) : TextJustifier;
}
