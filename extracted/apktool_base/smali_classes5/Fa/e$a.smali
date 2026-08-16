.class public LFa/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFa/e;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LFa/e;


# direct methods
.method public constructor <init>(LFa/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LFa/e$a;->a:LFa/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget-object v0, p0, LFa/e$a;->a:LFa/e;

    invoke-virtual {v0, p1}, LFa/e;->G0(F)F

    move-result p1

    return p1
.end method
