.class public LFa/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFa/c;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LFa/c;


# direct methods
.method public constructor <init>(LFa/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LFa/c$a;->a:LFa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 1
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

    iget-object v0, p0, LFa/c$a;->a:LFa/c;

    invoke-virtual {v0, p1, p2}, LFa/c;->G0(FF)F

    move-result p1

    return p1
.end method
