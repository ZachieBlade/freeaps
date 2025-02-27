import Foundation

struct Statistics: JSON, Equatable {
    var created_at: Date
    var iPhone: String
    var iOS: String
    var Build_Version: String
    var Build_Number: String
    var Branch: String
    var Build_Date: Date
    var Algorithm: String
    var AdjustmentFactor: Decimal
    var Pump: String
    var CGM: String
    var insulinType: String
    var peakActivityTime: Decimal
    var Carbs_24h: Decimal
    var GlucoseStorage_Days: Decimal
    var Statistics: Stats

    init(
        created_at: Date,
        iPhone: String,
        iOS: String,
        Build_Version: String,
        Build_Number: String,
        Branch: String,
        Build_Date: Date,
        Algorithm: String,
        AdjustmentFactor: Decimal,
        Pump: String,
        CGM: String,
        insulinType: String,
        peakActivityTime: Decimal,
        Carbs_24h: Decimal,
        GlucoseStorage_Days: Decimal,
        Statistics: Stats
    ) {
        self.created_at = created_at
        self.iPhone = iPhone
        self.iOS = iOS
        self.Build_Version = Build_Version
        self.Build_Number = Build_Number
        self.Branch = Branch
        self.Build_Date = Build_Date
        self.Algorithm = Algorithm
        self.AdjustmentFactor = AdjustmentFactor
        self.Pump = Pump
        self.CGM = CGM
        self.insulinType = insulinType
        self.peakActivityTime = peakActivityTime
        self.Carbs_24h = Carbs_24h
        self.GlucoseStorage_Days = GlucoseStorage_Days
        self.Statistics = Statistics
    }

    static func == (lhs: Statistics, rhs: Statistics) -> Bool {
        lhs.created_at == rhs.created_at
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(created_at)
    }
}

extension Statistics {
    private enum CodingKeys: String, CodingKey {
        case created_at
        case iPhone
        case iOS
        case Build_Version
        case Build_Number
        case Branch
        case Build_Date
        case Algorithm
        case AdjustmentFactor
        case Pump
        case CGM
        case insulinType
        case peakActivityTime
        case Carbs_24h
        case GlucoseStorage_Days
        case Statistics
    }
}

struct LoopCycles: JSON, Equatable {
    var loops: Int
    var errors: Int
    var success_rate: Decimal
    var avg_interval: Decimal
    var median_interval: Decimal
    var min_interval: Decimal
    var max_interval: Decimal
    var avg_duration: Decimal
    var median_duration: Decimal
    var min_duration: Decimal
    var max_duration: Decimal
}

struct Averages: JSON, Equatable {
    var Average: Durations
    var Median: Durations
}

struct Durations: JSON, Equatable {
    var day: Decimal
    var week: Decimal
    var month: Decimal
    var ninetyDays: Decimal
    var total: Decimal
}

struct TIRs: JSON, Equatable {
    var TIR: Durations
    var Hypos: Durations
    var Hypers: Durations
}

struct Ins: JSON, Equatable {
    let TDD: Decimal?
    let bolus: Decimal?
    let temp_basal: Decimal?
    let scheduled_basal: Decimal?
}

struct Variance: JSON, Equatable {
    var SD: Durations
    var CV: Durations
}

struct Stats: JSON, Equatable {
    var Distribution: TIRs
    var Glucose: Averages
    var HbA1c: Durations
    var LoopCycles: LoopCycles
    var Insulin: Ins
    var Variance: Variance
}

extension LoopCycles {
    private enum CodingKeys: String, CodingKey {
        case loops
        case errors
        case success_rate
        case avg_interval
        case median_interval
        case min_interval
        case max_interval
        case avg_duration
        case median_duration
        case min_duration
        case max_duration
    }
}

extension Averages {
    private enum CodingKeys: String, CodingKey {
        case Average
        case Median
    }
}

extension TIRs {
    private enum CodingKeys: String, CodingKey {
        case TIR
        case Hypos
        case Hypers
    }
}

extension Ins {
    private enum CodingKeys: String, CodingKey {
        case TDD
        case bolus
        case temp_basal
        case scheduled_basal
    }
}

extension Variance {
    private enum CodingKeys: String, CodingKey {
        case SD
        case CV
    }
}

extension Stats {
    private enum CodingKeys: String, CodingKey {
        case Distribution
        case Glucose
        case HbA1c
        case LoopCycles
        case Insulin
        case Variance
    }
}
