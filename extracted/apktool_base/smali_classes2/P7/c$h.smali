.class public LP7/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP7/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP7/c;->g(Z)LP7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP7/c;


# direct methods
.method public constructor <init>(LP7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP7/c$h;->a:LP7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSize"
        }
    .end annotation

    iget-object v0, p0, LP7/c$h;->a:LP7/c;

    invoke-virtual {v0, p1}, LP7/c;->y(I)V

    return-void
.end method
