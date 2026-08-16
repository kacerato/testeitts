.class public Lh7/d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh7/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/d;->h(Z)Lh7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/d;


# direct methods
.method public constructor <init>(Lh7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/d$j;->a:Lh7/d;

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

    iget-object v0, p0, Lh7/d$j;->a:Lh7/d;

    invoke-virtual {v0, p1}, Lh7/d;->z(I)V

    return-void
.end method
