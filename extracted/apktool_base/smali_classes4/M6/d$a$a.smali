.class public LM6/d$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM6/d$a;->c(LM6/c;LM6/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LM6/b;

.field public final synthetic c:LM6/d$a;


# direct methods
.method public constructor <init>(LM6/d$a;LM6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, LM6/d$a$a;->c:LM6/d$a;

    iput-object p2, p0, LM6/d$a$a;->b:LM6/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LM6/d$a$a;->b:LM6/b;

    iget-object v0, p1, LM6/b;->b:Ljava/lang/String;

    iget-object p1, p1, LM6/b;->h:Ljava/lang/String;

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
