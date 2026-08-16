.class public LTa/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTa/p;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LTa/p;


# direct methods
.method public constructor <init>(LTa/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LTa/p$c;->a:LTa/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    mul-float/2addr p1, p2

    return p1
.end method
