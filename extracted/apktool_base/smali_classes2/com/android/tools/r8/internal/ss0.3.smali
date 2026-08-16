.class public abstract enum Lcom/android/tools/r8/internal/ss0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/os0;

.field public static final enum c:Lcom/android/tools/r8/internal/ps0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/os0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/os0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ss0;->b:Lcom/android/tools/r8/internal/os0;

    new-instance v0, Lcom/android/tools/r8/internal/ps0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ps0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ss0;->c:Lcom/android/tools/r8/internal/ps0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Number;
.end method
