.class public Lnet/jpountz/xxhash/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/jpountz/xxhash/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/xxhash/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lnet/jpountz/xxhash/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/xxhash/j$a;

    invoke-direct {v0}, Lnet/jpountz/xxhash/j$a;-><init>()V

    sput-object v0, Lnet/jpountz/xxhash/j$a;->a:Lnet/jpountz/xxhash/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lnet/jpountz/xxhash/g;
    .locals 1

    new-instance v0, Lnet/jpountz/xxhash/j;

    invoke-direct {v0, p1, p2}, Lnet/jpountz/xxhash/j;-><init>(J)V

    return-object v0
.end method
