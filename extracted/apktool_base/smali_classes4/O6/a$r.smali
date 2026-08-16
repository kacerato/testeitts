.class public LO6/a$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO6/a$G;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->e2()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/a;


# direct methods
.method public constructor <init>(LO6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO6/a$r;->a:LO6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LO6/a$r;->a:LO6/a;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, LO6/a;->M1(LO6/a;I)V

    return-void
.end method
