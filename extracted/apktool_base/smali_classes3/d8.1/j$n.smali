.class public Ld8/j$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/j;->q0()V
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
.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    invoke-static {p1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    return-void
.end method
