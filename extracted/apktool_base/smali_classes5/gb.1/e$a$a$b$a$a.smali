.class public Lgb/e$a$a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$a$b$a;->a(LZ6/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lgb/e$a$a$b$a;


# direct methods
.method public constructor <init>(Lgb/e$a$a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$a$b$a$a;->b:Lgb/e$a$a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lgb/e$a$a$b$a$a;->b:Lgb/e$a$a$b$a;

    iget-object v0, v0, Lgb/e$a$a$b$a;->a:Lgb/e$a$a$b;

    iget-object v0, v0, Lgb/e$a$a$b;->a:Lgb/e$a$a;

    iget-object v0, v0, Lgb/e$a$a;->b:Lgb/e$a;

    iget-object v0, v0, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
