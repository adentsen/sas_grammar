// Generated from test.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class testLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, STRINGLITERAL=31, 
		Identifier=32, INT=33, WS=34;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
		"T__17", "T__18", "T__19", "T__20", "T__21", "T__22", "T__23", "T__24", 
		"T__25", "T__26", "T__27", "T__28", "T__29", "STRINGLITERAL", "ESC", "Identifier", 
		"INT", "WS"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'~'", "'`'", "'!'", "'@'", "'#'", "'$'", "'%'", "'^'", "'&'", "'*'", 
		"'='", "';'", "':'", "'\"'", "')'", "'_'", "'-'", "'('", "'|'", "'['", 
		"']'", "'{'", "'}'", "'+'", "'/'", "'?'", "','", "'.'", "'<'", "'>'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, "STRINGLITERAL", "Identifier", 
		"INT", "WS"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public testLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "test.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2$\u00af\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3"+
		"\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3"+
		"\17\3\20\3\20\3\21\3\21\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3\25\3\26\3"+
		"\26\3\27\3\27\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3"+
		"\35\3\36\3\36\3\37\3\37\3 \3 \3 \7 \u0089\n \f \16 \u008c\13 \3 \3 \3"+
		" \3 \7 \u0092\n \f \16 \u0095\13 \3 \5 \u0098\n \3!\3!\3!\3\"\3\"\7\""+
		"\u009f\n\"\f\"\16\"\u00a2\13\"\3#\6#\u00a5\n#\r#\16#\u00a6\3$\6$\u00aa"+
		"\n$\r$\16$\u00ab\3$\3$\2\2%\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25"+
		"\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32"+
		"\63\33\65\34\67\359\36;\37= ?!A\2C\"E#G$\3\2\t\4\2$$^^\4\2))^^\13\2$$"+
		"))^^cdhhppttvvxx\5\2C\\aac|\6\2\62;C\\aac|\3\2\62;\5\2\13\f\17\17\"\""+
		"\2\u00b5\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2"+
		"\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27"+
		"\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2"+
		"\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2"+
		"\2/\3\2\2\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2"+
		"\2\2\2;\3\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2"+
		"\3I\3\2\2\2\5K\3\2\2\2\7M\3\2\2\2\tO\3\2\2\2\13Q\3\2\2\2\rS\3\2\2\2\17"+
		"U\3\2\2\2\21W\3\2\2\2\23Y\3\2\2\2\25[\3\2\2\2\27]\3\2\2\2\31_\3\2\2\2"+
		"\33a\3\2\2\2\35c\3\2\2\2\37e\3\2\2\2!g\3\2\2\2#i\3\2\2\2%k\3\2\2\2\'m"+
		"\3\2\2\2)o\3\2\2\2+q\3\2\2\2-s\3\2\2\2/u\3\2\2\2\61w\3\2\2\2\63y\3\2\2"+
		"\2\65{\3\2\2\2\67}\3\2\2\29\177\3\2\2\2;\u0081\3\2\2\2=\u0083\3\2\2\2"+
		"?\u0097\3\2\2\2A\u0099\3\2\2\2C\u009c\3\2\2\2E\u00a4\3\2\2\2G\u00a9\3"+
		"\2\2\2IJ\7\u0080\2\2J\4\3\2\2\2KL\7b\2\2L\6\3\2\2\2MN\7#\2\2N\b\3\2\2"+
		"\2OP\7B\2\2P\n\3\2\2\2QR\7%\2\2R\f\3\2\2\2ST\7&\2\2T\16\3\2\2\2UV\7\'"+
		"\2\2V\20\3\2\2\2WX\7`\2\2X\22\3\2\2\2YZ\7(\2\2Z\24\3\2\2\2[\\\7,\2\2\\"+
		"\26\3\2\2\2]^\7?\2\2^\30\3\2\2\2_`\7=\2\2`\32\3\2\2\2ab\7<\2\2b\34\3\2"+
		"\2\2cd\7$\2\2d\36\3\2\2\2ef\7+\2\2f \3\2\2\2gh\7a\2\2h\"\3\2\2\2ij\7/"+
		"\2\2j$\3\2\2\2kl\7*\2\2l&\3\2\2\2mn\7~\2\2n(\3\2\2\2op\7]\2\2p*\3\2\2"+
		"\2qr\7_\2\2r,\3\2\2\2st\7}\2\2t.\3\2\2\2uv\7\177\2\2v\60\3\2\2\2wx\7-"+
		"\2\2x\62\3\2\2\2yz\7\61\2\2z\64\3\2\2\2{|\7A\2\2|\66\3\2\2\2}~\7.\2\2"+
		"~8\3\2\2\2\177\u0080\7\60\2\2\u0080:\3\2\2\2\u0081\u0082\7>\2\2\u0082"+
		"<\3\2\2\2\u0083\u0084\7@\2\2\u0084>\3\2\2\2\u0085\u008a\7$\2\2\u0086\u0089"+
		"\5A!\2\u0087\u0089\n\2\2\2\u0088\u0086\3\2\2\2\u0088\u0087\3\2\2\2\u0089"+
		"\u008c\3\2\2\2\u008a\u0088\3\2\2\2\u008a\u008b\3\2\2\2\u008b\u008d\3\2"+
		"\2\2\u008c\u008a\3\2\2\2\u008d\u0098\7$\2\2\u008e\u0093\7)\2\2\u008f\u0092"+
		"\5A!\2\u0090\u0092\n\3\2\2\u0091\u008f\3\2\2\2\u0091\u0090\3\2\2\2\u0092"+
		"\u0095\3\2\2\2\u0093\u0091\3\2\2\2\u0093\u0094\3\2\2\2\u0094\u0096\3\2"+
		"\2\2\u0095\u0093\3\2\2\2\u0096\u0098\7)\2\2\u0097\u0085\3\2\2\2\u0097"+
		"\u008e\3\2\2\2\u0098@\3\2\2\2\u0099\u009a\7^\2\2\u009a\u009b\t\4\2\2\u009b"+
		"B\3\2\2\2\u009c\u00a0\t\5\2\2\u009d\u009f\t\6\2\2\u009e\u009d\3\2\2\2"+
		"\u009f\u00a2\3\2\2\2\u00a0\u009e\3\2\2\2\u00a0\u00a1\3\2\2\2\u00a1D\3"+
		"\2\2\2\u00a2\u00a0\3\2\2\2\u00a3\u00a5\t\7\2\2\u00a4\u00a3\3\2\2\2\u00a5"+
		"\u00a6\3\2\2\2\u00a6\u00a4\3\2\2\2\u00a6\u00a7\3\2\2\2\u00a7F\3\2\2\2"+
		"\u00a8\u00aa\t\b\2\2\u00a9\u00a8\3\2\2\2\u00aa\u00ab\3\2\2\2\u00ab\u00a9"+
		"\3\2\2\2\u00ab\u00ac\3\2\2\2\u00ac\u00ad\3\2\2\2\u00ad\u00ae\b$\2\2\u00ae"+
		"H\3\2\2\2\13\2\u0088\u008a\u0091\u0093\u0097\u00a0\u00a6\u00ab\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}