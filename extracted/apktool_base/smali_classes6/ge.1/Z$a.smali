.class public Lge/Z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/d0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/Z;


# direct methods
.method public constructor <init>(Lge/Z;)V
    .locals 0

    iput-object p1, p0, Lge/Z$a;->a:Lge/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/Z$a;->a:Lge/Z;

    invoke-virtual {v0, p1, p2}, Lge/Z;->oa(Ljava/lang/Object;B)B

    const/4 p1, 0x1

    return p1
.end method
