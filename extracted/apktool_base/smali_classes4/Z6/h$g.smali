.class public LZ6/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/h$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/h$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/h$f;->dismiss()V

    return-void
.end method
