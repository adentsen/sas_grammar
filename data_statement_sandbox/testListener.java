// Generated from test.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link testParser}.
 */
public interface testListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link testParser#generic}.
	 * @param ctx the parse tree
	 */
	void enterGeneric(testParser.GenericContext ctx);
	/**
	 * Exit a parse tree produced by {@link testParser#generic}.
	 * @param ctx the parse tree
	 */
	void exitGeneric(testParser.GenericContext ctx);
	/**
	 * Enter a parse tree produced by {@link testParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(testParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link testParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(testParser.ExpressionContext ctx);
}