//
//  BigBoardHistoricalDateRangeTests.swift
//  BigBoard
//
//  Created by Dalton Hinterscher on 5/17/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import BigBoard
import Timepiece

class BigBoardHistoricalDateRangeTests: XCTestCase {
    
    var dateFormatter:NSDateFormatter!
    
    override func setUp() {
        super.setUp()

        dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    /*
        - - - - - Five Day Range Tests - - - - -
    */
    
    func testThatFiveDayRangeIsCorrectlyCalculatedWhenStartDateIsOnASunday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 7, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.fiveDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-01")
        XCTAssertEqual(endDateString, "2016-02-05")
        
    }
    
    func testThatFiveDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAMonday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 8, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.fiveDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-02")
        XCTAssertEqual(endDateString, "2016-02-08")
        
    }

    func testThatFiveDayRangeIsCorrectlyCalculatedWhenStartDateIsOnATuesday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 9, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.fiveDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-03")
        XCTAssertEqual(endDateString, "2016-02-09")
    }

    func testThatFiveDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAWednesday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 10, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.fiveDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-04")
        XCTAssertEqual(endDateString, "2016-02-10")
    }
    
    func testThatFiveDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAThursday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 11, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.fiveDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-05")
        XCTAssertEqual(endDateString, "2016-02-11")
    }
    
    func testThatFiveDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAFriday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 12, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.fiveDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-08")
        XCTAssertEqual(endDateString, "2016-02-12")
    }
    
    func testThatFiveDayRangeIsCorrectlyCalculatedWhenStartDateIsOnASaturday() {
        let endDate = NSDate().change(year: 2016, month: 2, day: 13, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.fiveDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-08")
        XCTAssertEqual(endDateString, "2016-02-12")
    }
    
    /*
        - - - - - Ten Day Range Tests - - - - -
    */
    
    func testThatTenDayRangeIsCorrectlyCalculatedWhenStartDateIsOnASunday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 7, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.tenDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-25")
        XCTAssertEqual(endDateString, "2016-02-05")
        
    }
    
    func testThatTenDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAMonday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 8, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.tenDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-26")
        XCTAssertEqual(endDateString, "2016-02-08")
        
    }
    
    func testThatTenDayRangeIsCorrectlyCalculatedWhenStartDateIsOnATuesday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 9, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.tenDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-27")
        XCTAssertEqual(endDateString, "2016-02-09")
    }
    
    func testThatTenDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAWednesday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 10, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.tenDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-28")
        XCTAssertEqual(endDateString, "2016-02-10")
    }
    
    func testThatTenDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAThursday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 11, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.tenDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-29")
        XCTAssertEqual(endDateString, "2016-02-11")
    }
    
    func testThatTenDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAFriday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 12, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.tenDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-01")
        XCTAssertEqual(endDateString, "2016-02-12")
    }
    
    func testThatTenDayRangeIsCorrectlyCalculatedWhenStartDateIsOnASaturday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 13, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.tenDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-02-01")
        XCTAssertEqual(endDateString, "2016-02-12")
    }
    
    /*
     - - - - - Thirty Day Range Tests - - - - -
     */
    
    func testThatThirtyDayRangeIsCorrectlyCalculatedWhenStartDateIsOnASunday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 7, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.thirtyDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)

        XCTAssertEqual(startDateString, "2015-12-28")
        XCTAssertEqual(endDateString, "2016-02-05")
        
    }
    
    func testThatThirtyDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAMonday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 8, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.thirtyDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2015-12-29")
        XCTAssertEqual(endDateString, "2016-02-08")
        
    }
    
    func testThatThirtyDayRangeIsCorrectlyCalculatedWhenStartDateIsOnATuesday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 9, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.thirtyDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2015-12-30")
        XCTAssertEqual(endDateString, "2016-02-09")
    }
    
    func testThatThirtyDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAWednesday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 10, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.thirtyDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2015-12-31")
        XCTAssertEqual(endDateString, "2016-02-10")
    }
    
    func testThatThirtyDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAThursday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 11, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.thirtyDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-01")
        XCTAssertEqual(endDateString, "2016-02-11")
    }
    
    func testThatThirtyDayRangeIsCorrectlyCalculatedWhenStartDateIsOnAFriday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 12, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.thirtyDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-04")
        XCTAssertEqual(endDateString, "2016-02-12")
    }
    
    func testThatThirtyDayRangeIsCorrectlyCalculatedWhenStartDateIsOnASaturday() {
        
        let endDate = NSDate().change(year: 2016, month: 2, day: 13, hour: 1, minute: 1, second: 1)
        let dateRange = BigBoardHistoricalDateRange.thirtyDayRangeFromDate(endDate: endDate)
        
        let startDateString = dateFormatter.stringFromDate(dateRange.startDate)
        let endDateString = dateFormatter.stringFromDate(dateRange.endDate)
        
        XCTAssertEqual(startDateString, "2016-01-04")
        XCTAssertEqual(endDateString, "2016-02-12")
    }
    
}
