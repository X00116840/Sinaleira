.class public Lcom/example/pelicancross/Accelerometer;
.super Lcom/example/pelicancross/MainActivity;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private TIME_OUT:I

.field private accelerometer:Landroid/hardware/Sensor;

.field private amberLight:Landroid/widget/ImageView;

.field private currentX:Landroid/widget/TextView;

.field private currentY:Landroid/widget/TextView;

.field private currentZ:Landroid/widget/TextView;

.field date:Ljava/util/Date;

.field private deltaX:F

.field private deltaY:F

.field private deltaZ:F

.field private greenLight:Landroid/widget/ImageView;

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private redLight:Landroid/widget/ImageView;

.field private sensorManager:Landroid/hardware/SensorManager;

.field time:Ljava/lang/Long;

.field timeChange:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/example/pelicancross/MainActivity;-><init>()V

    .line 25
    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaX:F

    .line 26
    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaY:F

    .line 27
    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaZ:F

    .line 30
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->date:Ljava/util/Date;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->timeChange:I

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->TIME_OUT:I

    .line 16
    return-void
.end method


# virtual methods
.method public changingLights(I)Z
    .locals 10
    .param p1, "t"    # I

    .prologue
    const v9, 0x7f02000b

    const/4 v0, 0x1

    const v8, 0x7f020007

    .line 86
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->msg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changingLights time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->redLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    int-to-long v2, p1

    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->redLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->greenLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->amberLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->msg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REDLIGHT time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->onPause()V

    .line 110
    :goto_0
    return v0

    .line 97
    :cond_0
    int-to-long v2, p1

    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->amberLight:Landroid/widget/ImageView;

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->greenLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->redLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->msg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AMBER time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_1
    int-to-long v2, p1

    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->amberLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->greenLight:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->redLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->msg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GREEN time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->onResume()V

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayCleanValues()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentX:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentY:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentZ:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public displayCurrentValues()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentX:Landroid/widget/TextView;

    iget v1, p0, Lcom/example/pelicancross/Accelerometer;->deltaX:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentY:Landroid/widget/TextView;

    iget v1, p0, Lcom/example/pelicancross/Accelerometer;->deltaY:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentZ:Landroid/widget/TextView;

    iget v1, p0, Lcom/example/pelicancross/Accelerometer;->deltaZ:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public initializeViews()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->redLight:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->amberLight:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->greenLight:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentX:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentY:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->currentZ:Landroid/widget/TextView;

    .line 82
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->moveTaskToBack(Z)Z

    .line 187
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->finish()V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/example/pelicancross/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->initializeViews()V

    .line 42
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 43
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->accelerometer:Landroid/hardware/Sensor;

    .line 47
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 50
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/example/pelicancross/Accelerometer;->time:Ljava/lang/Long;

    .line 55
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/example/pelicancross/MainActivity;->onPause()V

    .line 126
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->msg:Ljava/lang/String;

    const-string v2, "onPause *********************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->finish()V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/pelicancross/Database;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/example/pelicancross/MainActivity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->msg:Ljava/lang/String;

    const-string v1, "onResume *********************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/example/pelicancross/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/example/pelicancross/Accelerometer;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 121
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->timer()V

    .line 138
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->displayCleanValues()V

    .line 139
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->displayCurrentValues()V

    .line 142
    iget v0, p0, Lcom/example/pelicancross/Accelerometer;->lastX:F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaX:F

    .line 143
    iget v0, p0, Lcom/example/pelicancross/Accelerometer;->lastY:F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaY:F

    .line 144
    iget v0, p0, Lcom/example/pelicancross/Accelerometer;->lastZ:F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaZ:F

    .line 147
    iget v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 148
    iput v2, p0, Lcom/example/pelicancross/Accelerometer;->deltaX:F

    .line 149
    :cond_0
    iget v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 150
    iput v2, p0, Lcom/example/pelicancross/Accelerometer;->deltaY:F

    .line 151
    :cond_1
    iget v0, p0, Lcom/example/pelicancross/Accelerometer;->deltaZ:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 152
    iput v2, p0, Lcom/example/pelicancross/Accelerometer;->deltaZ:F

    .line 156
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->lastX:F

    .line 157
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->lastY:F

    .line 158
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/example/pelicancross/Accelerometer;->lastZ:F

    .line 160
    iget v0, p0, Lcom/example/pelicancross/Accelerometer;->lastX:F

    iget v1, p0, Lcom/example/pelicancross/Accelerometer;->lastY:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/example/pelicancross/Accelerometer;->lastZ:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/example/pelicancross/Accelerometer;->speed:I

    .line 161
    return-void
.end method

.method public restart(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/pelicancross/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/pelicancross/Accelerometer;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->finish()V

    .line 182
    return-void
.end method

.method public timer()V
    .locals 8

    .prologue
    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 63
    .local v0, "date2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v2, v4

    .line 64
    .local v2, "timeAux":J
    long-to-int v4, v2

    invoke-virtual {p0, v4}, Lcom/example/pelicancross/Accelerometer;->changingLights(I)Z

    .line 66
    iget-object v4, p0, Lcom/example/pelicancross/Accelerometer;->time:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lcom/example/pelicancross/Accelerometer;->TIME_OUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/example/pelicancross/Database;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/example/pelicancross/Accelerometer;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/example/pelicancross/Accelerometer;->finish()V

    .line 71
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
