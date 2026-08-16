.class public Lc8/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b;->t(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    const-string p1, "GAME_STARTED"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    new-instance p1, Lc8/b$a$a;

    invoke-direct {p1, p0}, Lc8/b$a$a;-><init>(Lc8/b$a;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    new-instance p1, Lc8/b$a$b;

    invoke-direct {p1, p0}, Lc8/b$a$b;-><init>(Lc8/b$a;)V

    const/4 v0, 0x2

    invoke-static {v0, p1}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    return-void
.end method
