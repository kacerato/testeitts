.class public final Lkotlin/time/I$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/I$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/I$b$a;
    }
.end annotation


# static fields
.field public static final b:Lkotlin/time/I$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/time/I$b;

    invoke-direct {v0}, Lkotlin/time/I$b;-><init>()V

    sput-object v0, Lkotlin/time/I$b;->b:Lkotlin/time/I$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lkotlin/time/H;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lkotlin/time/I$b;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/time/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/time/I$b;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    sget-object v0, Lkotlin/time/F;->b:Lkotlin/time/F;

    invoke-virtual {v0}, Lkotlin/time/F;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/time/F;->b:Lkotlin/time/F;

    invoke-virtual {v0}, Lkotlin/time/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
