using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Event_Library
{
    public class EventInfo
    {
        private String eventName { get; set; }
        private String eventOwner { get; set; }
        private String streetAddress1 { get; set; }
        private String streetAddress2 { get; set; }
        private String roomNumber { get; set; }
        private DateTime startDate { get; set; }
        private DateTime endDate { get; set; }
        private TimeSpan startTime { get; set; }
        private TimeSpan endTime { get; set; }
        private int zipcode { get; set; }
        private String city { get; set; }
        private String country { get; set; }
        private String timeZone1 { get; set; }
        private String timeZone2 { get; set; }
        private String buildingName { get; set; } 

    }
}
