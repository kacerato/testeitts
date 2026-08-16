.class public Lge/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/p<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/o;


# direct methods
.method public constructor <init>(Lge/o;)V
    .locals 0

    iput-object p1, p0, Lge/o$a;->a:Lge/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(CLjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/o$a;->a:Lge/o;

    invoke-virtual {v0, p1, p2}, Lge/o;->I3(CLjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
