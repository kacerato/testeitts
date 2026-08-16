.class public final Leg/K0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyf/j$c<",
        "Leg/K0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:Leg/K0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/K0$b;

    invoke-direct {v0}, Leg/K0$b;-><init>()V

    sput-object v0, Leg/K0$b;->b:Leg/K0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
