.class public Li5/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li5/b;


# direct methods
.method public constructor <init>(Li5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li5/b$g;->a:Li5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Li5/b$g;->a:Li5/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li5/b;->Z(Li5/b;LP4/c;)LP4/c;

    return-void
.end method
