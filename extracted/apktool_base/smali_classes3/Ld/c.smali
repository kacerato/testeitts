.class public final LLd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeUtilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeUtilities.kt\ncom/pierfrancescosoffritti/androidyoutubeplayer/core/ui/utils/TimeUtilities\n*L\n1#1,18:1\n*E\n"
.end annotation


# static fields
.field public static final a:LLd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LLd/c;

    invoke-direct {v0}, LLd/c;-><init>()V

    sput-object v0, LLd/c;->a:LLd/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(F)Ljava/lang/String;
    .locals 2
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x3c

    int-to-float v0, v0

    div-float v1, p0, v0

    float-to-int v1, v1

    rem-float/2addr p0, v0

    float-to-int p0, p0

    sget-object v0, Lkotlin/jvm/internal/v0;->a:Lkotlin/jvm/internal/v0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d:%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
