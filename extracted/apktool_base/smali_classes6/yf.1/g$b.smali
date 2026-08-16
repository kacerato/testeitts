.class public final Lyf/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyf/j$c<",
        "Lyf/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Lyf/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyf/g$b;

    invoke-direct {v0}, Lyf/g$b;-><init>()V

    sput-object v0, Lyf/g$b;->b:Lyf/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
