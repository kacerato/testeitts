.class public Lx5/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/a$b;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx5/a$b;


# direct methods
.method public constructor <init>(Lx5/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lx5/a$b$a;->b:Lx5/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lx5/a$b$a$a;

    invoke-direct {v0, p0}, Lx5/a$b$a$a;-><init>(Lx5/a$b$a;)V

    invoke-static {v0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-void
.end method
