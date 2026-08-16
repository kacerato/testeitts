.class public LZ6/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/i$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V
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
.method public a(LZ6/i$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/i$f;->dismiss()V

    return-void
.end method
