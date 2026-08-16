.class public Lnet/jpountz/xxhash/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/jpountz/xxhash/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/xxhash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lnet/jpountz/xxhash/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/xxhash/f$a;

    invoke-direct {v0}, Lnet/jpountz/xxhash/f$a;-><init>()V

    sput-object v0, Lnet/jpountz/xxhash/f$a;->a:Lnet/jpountz/xxhash/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lnet/jpountz/xxhash/c;
    .locals 1

    new-instance v0, Lnet/jpountz/xxhash/f;

    invoke-direct {v0, p1}, Lnet/jpountz/xxhash/f;-><init>(I)V

    return-object v0
.end method
