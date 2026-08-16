.class public final Lpf/w0$a;
.super Lpf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpf/w0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf/c<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,206:1\n204#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:207\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,206:1\n204#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:207\n*E\n"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public final synthetic f:Lpf/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/w0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpf/w0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/w0<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpf/w0$a;->f:Lpf/w0;

    invoke-direct {p0}, Lpf/c;-><init>()V

    invoke-virtual {p1}, Lpf/b;->size()I

    move-result v0

    iput v0, p0, Lpf/w0$a;->d:I

    invoke-static {p1}, Lpf/w0;->f(Lpf/w0;)I

    move-result p1

    iput p1, p0, Lpf/w0$a;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lpf/w0$a;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lpf/c;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpf/w0$a;->f:Lpf/w0;

    invoke-static {v0}, Lpf/w0;->d(Lpf/w0;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lpf/w0$a;->e:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lpf/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lpf/w0$a;->f:Lpf/w0;

    iget v1, p0, Lpf/w0$a;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Lpf/w0;->e(Lpf/w0;)I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lpf/w0$a;->e:I

    iget v0, p0, Lpf/w0$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lpf/w0$a;->d:I

    :goto_0
    return-void
.end method
