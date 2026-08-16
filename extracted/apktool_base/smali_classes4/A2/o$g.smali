.class public final LA2/o$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA2/o$g;->a:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(LA2/o$g;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LA2/o$g;->a:Ljava/lang/Object;

    return-object p0
.end method
