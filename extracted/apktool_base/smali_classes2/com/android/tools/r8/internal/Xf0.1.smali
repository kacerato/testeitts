.class public final Lcom/android/tools/r8/internal/Xf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Xf0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Xf0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Xf0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Xf0;->b:Lcom/android/tools/r8/internal/Xf0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/lg0;

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/tools/r8/internal/wS;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/wS;-><init>()V

    return-object p1
.end method
