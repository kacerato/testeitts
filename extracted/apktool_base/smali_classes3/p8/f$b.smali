.class public Lp8/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8/f;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lp8/f;


# direct methods
.method public constructor <init>(Lp8/f;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$command"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp8/f$b;->b:Lp8/f;

    iput-object p2, p0, Lp8/f$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lp8/f$b;->b:Lp8/f;

    invoke-static {v0}, Lp8/f;->o(Lp8/f;)LJAVARuntime/TerminalCLIExtension;

    move-result-object v0

    iget-object v1, p0, Lp8/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LJAVARuntime/TerminalCLIExtension;->run(Ljava/lang/String;)V

    return-void
.end method
