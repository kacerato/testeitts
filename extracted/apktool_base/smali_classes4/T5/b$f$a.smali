.class public LT5/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/b$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LT5/b$f;


# direct methods
.method public constructor <init>(LT5/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LT5/b$f$a;->b:LT5/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LT5/b$f$a;->b:LT5/b$f;

    iget-object v0, v0, LT5/b$f;->d:LT5/b$l;

    const-string v1, "Failed to load repository"

    invoke-interface {v0, v1}, LT5/b$l;->a(Ljava/lang/String;)V

    return-void
.end method
