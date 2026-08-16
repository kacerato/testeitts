.class public LN6/v$a;
.super Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/v;-><init>(LN6/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LN6/v;


# direct methods
.method public constructor <init>(LN6/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LN6/v$a;->d:LN6/v;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "ShaderGraphPreview"

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LN6/v$a;->d:LN6/v;

    invoke-static {v0}, LN6/v;->g(LN6/v;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, LN6/v$a;->d:LN6/v;

    invoke-static {v0}, LN6/v;->f(LN6/v;)V

    return-void
.end method
