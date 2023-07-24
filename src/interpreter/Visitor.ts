import {
    MainVisitor,
    AbstractParseTreeVisitor
} from "./deps.ts"
import * as A from "./deps.ts"

export default
class Visitor
extends AbstractParseTreeVisitor<any>
implements MainVisitor<any>
{
    defaultResult() {
        return { value: "__TODO__" }
    }
    visitParenExpr(ctx: A.ParenExprContext) {
        return this.visit(ctx.expr())
    }
}